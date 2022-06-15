import bcrypt from 'bcrypt';
import jwt from 'jsonwebtoken';
import dotenv from 'dotenv';
import path from 'path';
import fs from 'fs';
import { UserModel } from '../database/mysql.js';
dotenv.config({path: './.env'})

export default class UserController {

    async register(req, res) {
        const {name, email, password} = req.body;

        // function for send response client
        function sendResponse(code, object, headers = {'Content-Type': 'application/json'}, options = false) {
            if(options) {
                res.cookie(options.cookie.name, options.cookie.value, options.cookie.options)
            };
            res.writeHead(code, headers).end(JSON.stringify(object));
        }

        if(name || email || password) {

            // check valid data 
            if(password.length > 3) {
                
                // hashing password
                let salt = bcrypt.genSaltSync(10);
                let hashPasswrod = bcrypt.hashSync(password, salt);
                
                // data user with new hash password
                const userData = {
                    name,
                    email,
                    password: hashPasswrod
                };

                // create user
                UserModel.create(userData)
                    .then(user => {
                        
                        // create token
                        const token = jwt.sign(user.dataValues, process.env.TOKEN_KEY, {algorithm: 'HS256'}, { expiresIn: Math.floor(Date.now() / 1000) + (60 * 60) });
                        
                        // send respondse and save token in cookie
                        sendResponse(201, {message: 'User created'}, {'Content-Type': 'application/json'}, {
                            cookie: {
                                name: 'userToken',
                                value: token,
                                options: {
                                    maxAge: Math.floor(Date.now() / 1000) + (60 * 60)
                                }
                            }
                        });
                    })
                    .catch(err => {
                        if(err) {
                            switch (err.original.errno) {
                                case 1062:
                                    sendResponse(400, {message: 'User exists'});
                                    break;
                            };
                        }

                    });

            }else {
                
                // sending an error when the password is wrong
                sendResponse(400, {message: 'Short password'});

            }

        }else{

            sendResponse(404, {message: 'Incrorrect data'})

        }
    
    }

    async login(req, res) {
        const {email, password} = req.body;

        // function for send response client
        function sendResponse(code, object, headers = {'Content-Type': 'application/json'}, options = '') {
            if(options.cookie) {
                res.cookie(options.cookie.name, options.cookie.value, options.cookie.options)
            };
            res.writeHead(code, headers).end(JSON.stringify(object));
        }

        // check data on incorrect
        if(email || password) {

            // get user
            const {dataValues} = await UserModel.findOne({where: {email: email}});

            if(!dataValues) return sendResponse(404, {message: 'Incorrect email or password'});
            
            // check password
            const decodePassword = bcrypt.compareSync(password, dataValues.password);

            if(decodePassword) {
                const token = jwt.sign(dataValues, process.env.TOKEN_KEY, {algorithm: 'HS256'}, { expiresIn: Math.floor(Date.now() / 1000) + (60 * 60) });
                
                res.cookie('userToken', token, {
                    maxAge: Math.floor(Date.now() / 1000) + (60 * 60)
                });
                res.redirect(`/user/profile/${dataValues.id}`);
                
            }else{
                sendResponse(404, {message: 'Incorrect email or password'});
            }
            
 
        }else {

            sendResponse(400, {message: 'Empty data'});

        }
    }

    async update(req, res) {
        const { id } = req.params;
        const data = req.body;
        const file = req.file;


        // get old path img
        const userData = await UserModel.findByPk(id);
        const oldImg = userData.dataValues.img;

        async function fileFilter(file, callback) {
            const extFile = file.mimetype;
            const sizeFile =  file.size / 1024 / 1000;

            function delFile(file, callback) {
                // delete file
                fs.unlink(file.path, (errUnlink) => {
                    if(errUnlink) return callback(errUnlink);
                    callback(null);
                });
            };

            if (extFile !== 'image/jpg' && extFile !== 'image/png' && extFile !== 'image/jpeg') {
               
                const err = 'Error format: must be jpg, png';
                
                // delete file
                delFile(file, (errDel) => {
                    if(errDel) return callback(errDel);
                });
                
                return callback(err, null);

            }else if(sizeFile > 10) {

                const err = 'Size file > 10mb';

                // delete file
                delFile(file, (errDel) => {
                    if(errDel) return callback(errDel);
                });
                return callback(err, null);

            }
            callback(null, true);
        };

        
        if(!file) {
            UserModel.update({...data}, {where: {id: id}});
            return res.writeHead(200, {'Content-Type': 'application/json'}).end(JSON.stringify({message: 'Update successfully'}));
        };

        const newImg = file.filename + path.parse(file.originalname).ext;
        
        fileFilter(file, (err, result) => {
            if(err) return res.writeHead(404, {'Content-Type': 'application/json'}).end(JSON.stringify({err}));
            
            if(oldImg) {
                fs.unlinkSync(path.resolve('uploads') + '\\' + oldImg);
            }

            if(result) {
                fs.rename(file.path, 'uploads\\' + newImg, (errRename) => {
                    if(errRename) return res.writeHead(500, {'Content-Type': 'application/json'}).end(JSON.stringify({err: errRename}));
                    UserModel.update({...data, img: newImg}, {where: {id: id}});
                    res.writeHead(200, {'Content-Type': 'application/json'}).end(JSON.stringify({message: 'Update successfully'}));
                });
            }

        });

    };


    async getOne(req, res) {
        const { id } = req.params;

        const {dataValues} = await UserModel.findByPk(id);
        delete dataValues.password;
        res.send(dataValues);
    };

    async getAll(req, res) {
        const { page } = req.query;
        const limit = 3;

        const startIndex = (page - 1) * limit;
        const endIndex = page * limit;

        const data = await UserModel.findAll();
        const result = data.slice(startIndex, endIndex);

        if(page) return res.send(result);
        res.send(data);
    }   

};