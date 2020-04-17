const path = require('path');
const express = require('express');
const ejs = require('ejs');
const bodyParser = require('body-parser');
const mysql = require('mysql');
const app = express();

//------CONNECT WITH DATABASE NAMED CITATION------
const connection=mysql.createConnection({
    host:'localhost',
    user:'root',
    password:'admin1',
    database:'citation'
});

connection.connect(function(error){
    if(!!error) console.log(error);
    else console.log('Database Connected!');
}); 
			
//------set view engine------
app.set('view engine', 'ejs');

//------set views file------
app.set('views',path.join(__dirname,'views')); 
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(express.static(path.join(__dirname)));
app.use(express.static(path.join(__dirname, 'public')));
app.use(express.static(path.join(__dirname, 'public','css')));

// ------Display all AUTHORS------
app.get('/',(req, res) => {

    // display all  authors
    let sql = "SELECT * FROM citations";
    let query = connection.query(sql, (err, rows) => {
        if(err) throw err;
        res.render('index', {
            title : 'ALL AUTHORS',
            authors : rows
        });
    });
});

// -----------ADD AUTHOR------------
app.get('/add',(req, res) => {
	// page add author
    res.render('add_page', {
        title : 'ADD AUTHOR',
    });
});
   
app.post('/save',(req, res) => { 
	// Form in page add author
    let data = {name: req.body.name, citation: req.body.citation};
    let sql = "INSERT INTO citations SET ?";
    let query = connection.query(sql, data,(err, results) => {
      if(err) throw err;
      res.redirect('/');
    });
});


//------------EDIT AUTHOR INFO-----------------
app.get('/edit/:userId',(req, res) => {
	// Edit authors info
    const authorId = req.params.userId;
    let sql = `Select * from citations where id = ${authorId}`;
    let query = connection.query(sql,(err, result) => {
        if(err) throw err;
        res.render('edit_page', {
            title : 'EDIT AUTHOR INFO',
            author : result[0]
        });
    });
});

app.post('/update',(req, res) => {
  
  let userId = req.body.id

 
    let sql = "update citations SET name='"+req.body.name+"', citation='"+req.body.citation+"' where id ="+userId;
    let query = connection.query(sql,(err, results) => {
      if(err) throw err;
      res.redirect('/');
    });
});






// -----------------------------------------------DELETE AUTHOR--------------------------------------------

app.get('/delete/:userId',(req, res) => {
    const userId = req.params.userId;
    let sql = `DELETE from citations where id = ${userId}`;
    let query = connection.query(sql,(err, result) => {
        if(err) throw err;
        res.redirect('/');
    });
});





// Server Listening
app.listen(300, () => {
    console.log('Server is running at port 300');
});