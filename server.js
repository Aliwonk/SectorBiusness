import http from 'http';
import dotenv from 'dotenv';
import app from './app.js';
import { sequelize } from './database/mysql.js';

dotenv.config({path: './.env'});
const port = process.env.PORT;

const server = http.createServer(app);

sequelize.sync({alter: true})
    .then(() => {
        
        server.listen(port);
        server.on('listening', () => {
            console.log(`Server work on port ${port}`);
        });
    
    })
    .catch(err => console.log(err));