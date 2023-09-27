const passport = require('passport');
const LocalStrategy = require('passport-local').Strategy;
const pool = require('../database');
const helpers = require('./helpers');

passport.use('local.signin', new LocalStrategy({
    usernameField: 'login_email',
    passwordField: 'login_password',
    passReqToCallback: true
}, async (req, username, password, done) => {
    const rows = await pool.query('SELECT * FROM user WHERE user_email = ?', [username]);
    if (rows.length > 0) {
        const user = rows[0];
        const validPassword = await helpers.matchPassword(password, user.user_password);
        if (validPassword) {
            done(null, user, req.flash('success', 'Bienvenido' + user.user_name));
        }else {
            done(null, false, req.flash('message', 'Datos incorrectos'));
        }
    }else {
        return done(null, false, req.flash('message', 'Datos inexistentes'));
    }
}));

passport.use('local.signup', new LocalStrategy({
    usernameField: 'signup_user_name',
    passwordField: 'signup_password',
    passReqToCallback: true
}, async (req, username,password,done) => {
    const {signup_email} = req.body;
    const{signup_name} = req.body;  //agregue yo
    const{signup_apellido} =req.body;
    const{signup_pais} = req.body;
    const{signup_nivel_ingles} = req.body;
    const{signup_nombre_tutor} =req.body;
    const{signup_correo_tutor} = req.body;
    
       
    const newUser = {
        user_name : username,
        user_password : passport,
        user_email : signup_email,
        type_course: null,//null
        name:signup_name,  //Agregue yo el name
        user_apellido:signup_apellido,
     //   user_edad:signup_edad,
     //   user_telefono:signup_telefono
     user_pais:signup_pais,
     user_nivel_ingles:signup_nivel_ingles,
     user_nombre_tutor:signup_nombre_tutor,
     user_correo_tutor:signup_correo_tutor

    };
    newUser.user_password = await helpers.encryptPassword(password);

    // Saving in the Database
    const rows = await pool.query('SELECT * FROM user WHERE user_email = ?', [signup_email]);
    if (rows.length > 0) {
        done(null, false, req.flash('message', 'Correo electrónico ya registrado'));
    }else{
        const result = await pool.query('INSERT INTO user SET ? ', newUser);
        console.log(result);
        newUser.id_user = result.insertId;
        return done(null, newUser);
    }
}));

passport.serializeUser((user, done) => {
    done(null, user.id_user);
  });
  
  passport.deserializeUser(async (id, done) => {
    const rows = await pool.query('SELECT * FROM user WHERE id_user = ?', [id]);
    done(null, rows[0]);
  });