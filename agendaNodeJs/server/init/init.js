const mongojs = require('mongojs');

var db = mongojs('mongodb://127.0.0.1:27017/test', ['users']);
var User = require('../models/user');

module.exports = () => {
    let nuevoUsuario = new User({user: 'pedro', password: '123'});

    db.users.save(nuevoUsuario, (err, resultado) => {
        if(err){
            throw err;
        } else {
            console.log('Base de datos inicializada.');
        }
    });
};