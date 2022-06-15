import jwt from 'jsonwebtoken';
import dotenv from 'dotenv';
dotenv.config({path: './.env'});

export default class UserMiddleware {

    async checkUser(req, res, next) {
        const userToken = req.cookies.userToken;

        if(!userToken) return res.writeHead(401, {'Content-Type': 'application/json'}).end(JSON.stringify({err: 'Unauthorized'}));

        // const decodeToken = jwt.verify(userToken, process.env.TOKEN_KEY)
        
        // return res.redirect(`/user/profile/${decodeToken.id}`);
        next();
    }

}