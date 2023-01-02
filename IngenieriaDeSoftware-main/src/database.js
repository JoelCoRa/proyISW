const mysql = require('mysql');
const {promisify} = require('util');

const {database} = require('./keys');

const pool = mysql.createPool(database);

pool.getConnection((err, connection) => {
    if (err) {
        if (err.code === 'PROTOCOL_CONNECTION_LOST') {
            console.error('__DATABASE CONNECTION WAS CLOSED');
        }
        if (err.code === 'ER_CON_COUNT_ERROR') {
            console.log('__DATABASE HAS MANY CONNECTIONS');
        }
        if (err.code === 'ECONNREFUSED') {
            console.log('__DATABASE CONNECTION WAS REFUSED');
        }
    }
    if (connection) connection.release();
    console.log('__DATABASE CONNECTED');
    return;
});

pool.query = promisify(pool.query)
module.exports = pool;