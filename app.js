import cookieParser from 'cookie-parser';
import express from 'express';
import multer from 'multer';
import route from './routes/router.js';
const app = express();


app.use(express.json())
app.use(cookieParser('secret key'))
app.use(express.static('uploads'));
app.use('/', route);

export default app;