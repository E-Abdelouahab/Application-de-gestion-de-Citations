
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
|                                                                     Instraction de lancement ce projet                                                                                                                     |
------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


Première table aller à l'application ouvrir le serveur puis aller à phpmyadmin créer la base de données puis créer la table avec 3 colonnes id nom auto_increment 
description puis suivez les étapes suivantes :


Étape 1 : ouvrir un nouveau dossier puis installer npm init  
			 
		
Étape 2  :  Installez les paquets requis en utilisant NPM comme ceci===> 

			==> npm install  express mysql body-parser ejs --save
			
		
Étape 3  :Ajouter le code suivant dans app.js
		
			const path = require('path');
			const express = require('express');
			const ejs = require('ejs');
			const bodyParser = require('body-parser');
			const mysql = require('mysql');
			const app = express();

			// Server Listening
			app.listen(300, () => {
				console.log('Server is running at port 300');
			});
			
		
		
Étape 4 : Créer une connexion à la base de données 

			const mysql=require('mysql');
			
			const connection=mysql.createConnection({
			  host:'localhost',
			  user:'root',
			  password:'put your massword',
			  database:'put name of your database)'
			});
			
			connection.connect(function(error){
			  if(!!error) console.log(error);
			  else console.log('Database Connected!');
			}); 

Setp 5 : Définir le moteur de vue avec ejs / public path / view files path / bodyParser/express static

			app.set('view engine', 'ejs');
                        app.set('views',path.join(__dirname,'views'));
			app.use(bodyParser.json());
			app.use(bodyParser.urlencoded({ extended: false }));
                        app.use(express.static(path.join(__dirname)));
                        app.use(express.static(path.join(__dirname, 'public')));
                        app.use(express.static(path.join(__dirname, 'public','css')));

Setp 6 : Définir le chemin de l'index avec '/' et le fichier ejs
			
			//route for user index page
			app.get('/',(req, res) => {
				res.render('index', {
					title: 'ALL AUTHORS '
				});
			});

Setp 7 : Lancer un serveur et vérifier avec le navigateur

			node app

			http://localhost:300/
			
Etape 8 : Valorisation de la base de données et affichage dans le modèle ejs