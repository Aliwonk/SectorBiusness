import Sequelize from 'sequelize';
import dotenv from 'dotenv';
dotenv.config({path: './.env'});

const dbHost = process.env.DB_HOST || 'localhost',
dbPort = process.env.DB_PORT || 3306,
dbName = process.env.DB_NAME || 'test',
dbLogin = process.env.DB_LOGIN || 'root',
dbPassword = process.env.DB_PASSWORD || 'root';

const sequelize = new Sequelize(dbName, dbLogin, dbPassword, {
    dialect: 'mysql',
    host: dbHost,
    port: dbPort,
    define: {
        timestamps: true
    },
    logging: false
});

const UserModel = sequelize.define('users' , {
    id: {
        type: Sequelize.INTEGER,
        autoIncrement: true,
        primaryKey: true,
        allowNull: false
    },
    name: {
        type: Sequelize.STRING,
        allowNull: false
    },
    surname: {
        type: Sequelize.STRING,
    },
    gender: {
        type: Sequelize.STRING,
    },
    email: {
        type: Sequelize.STRING,
        allowNull: false,
    },
    password: {
        type: Sequelize.STRING,
        allowNull: false
    },
    img: {
        type: Sequelize.STRING
    }
    
});

export {
    sequelize,
    UserModel
};
