import express from 'express';
import multer from 'multer';
import UserController from '../controller/userController.js';
import UserMiddleware from '../middleware/userMiddleware.js';

const route = express.Router();
const upload = multer({dest: 'uploads'});
const userController = new UserController();
const userMiddleware = new UserMiddleware();

// route user
route.post('/user/register', userController.register);
route.post('/user/login', userController.login);
route.post('/user/profile/:id', upload.single('userImg'), userController.update);
route.use(userMiddleware.checkUser);
route.get('/user/profile/:id', userController.getOne);
route.get('/user/profiles', userController.getAll);

export default route;