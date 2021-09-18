let express = require('express')
let cors = require('cors');
let mysql = require('mysql');
let app = express();

const port = 3000;

    let con = mysql.createConnection({
    host: 'localhost',
        port: 3306,
        user: 'root',
        password: '',
        database: 'pokenmon-hospital'
    });

    con.connect(function(err) {
        if (err) throw err;
        console.log("Connected!");
    });

    app.listen(port, () => {
        console.log(`Example app listening at http://localhost:${port}`)
    })

    app.use(cors({origin: '*'}));

    app.get('/index', (req, res)=>{
        res.status(200).send({
            data: Math.floor(Math.random() * 10)
        });
    })

    app.get('/getTyepOfPokemon', (req, res)=>{
        const query = 'SELECT * FROM cat_tipo';
        con.query(query, function(err, result){
            if(err){
                throw err;
            }
            res.status(200).send(result);
        })
    });


    app.get('/getPokemonList', (req, res)=>{
        const query = 'SELECT * FROM pokemon';
        con.query(query, function(err, result){
            if(err){
                res.status(500).send({
                        'mesagge':'Error interno',
                        'payload':[],
                        'code':-1
                    });
            }
            res.status(200).send(result);
        })
    });