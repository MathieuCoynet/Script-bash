#!/bin/sh

REPO=${PWD##*/}
GIT_REMOTE_URL=ssh://$USER@$HOST/$GIT_PATH/$REPO
~cd
read reponse
echo "==========Bienvenue=Dans=La=Matrice============"
echo "----------Que cherche-tu l'ami?----------------"
echo "-----[1]Creer repertoire GITHUB----------------"
echo "-----[2]Push...================================"
echo "-----[3]Clone/---------------------------------"
echo "=====[4]Creer=repertoire=entier================"
echo "==========QUELLE=PILLULE=AVALERA-TU?==========="

if ("$reponse" = "1"); then 

echo "============================================="
echo "-------------------------------------------"
echo "=======Creation=du=repertoire=GITHUB========="
echo "-------------------------------------------"

# Ici on nous rappel l'endroit où nous somme
echo "Nous sommes:"
pwd
echo "-------------------"
echo "============Envoyer=repo=à:============"
echo "-------------------"
read adresse
cd ./$adresse/

echo "------------------"
echo "===========Creation en cour============"
echo "------------------"


# On commence le protocol de mise en ligne

touch .gitignore
echo "# Nouveau site" >> README.md
git init
git add .

echo "----------------------------"
echo "--------------------------------"
echo "-------Quel est ton commentaire?-------"
echo "----------------------------"
git commit -m '$commentaire'
read commentaire

echo "---------------"
echo "============URL?========================="
echo "---------------"

read url
git push--all $url 
git remote add origin $url
git push u- origin master

echo "----------------------------"
echo "====OP=bro!========="
echo "-- -------------------------"
echo "==========================================="

echo "----------------------------"
echo "============Tu========L'elu=============="
echo "-----------------Est-----------------"
echo "========================================"

elif ["$reponse" = "2"]; then
echo "----------------------------"
echo "-------------------------------"
echo "==Que=veux=tu=push?============="
echo "-------------------------------"
echo "----------------------------"
read path
cd ./$path/
git add .

echo "-----------------------------"
echo "--------------------------------"
echo "======Objet du changement?========"
echo "--------------------------------"
echo "-----------------------------"
read commantaire
git commit m- "$commentaire"


git push
echo "-----------------------------"
echo "----------------------------------"
echo "=======La=matrice=A=bien=reçut=Son=Dù======="
echo "-----------------------------------"
echo "-----------------------------"

elif ["$reponse" = "3"]; then
echo "-----------------------------"
echo "======Où=veut=Tu=ton=clone=?===="
echo "-----------------------------"
read path
cd ./$path/

echo "----------Endroit-----------------------"
echo "==De==============Provient=================="
echo "-----Quelle--------------------Repertoire------"
echo "===========================Ce==============?==="
echo "--------------------------------------------"
echo "---------------------------------------"
read url
git clone

echo "-----------------------------"
echo "-------------------------------------"
echo "======L'evolution=à=été=cloner=avec=succés==="
echo "------------------------------------"
echo "-----------------------------"
echo "-----------------------------"

#On vient creer un structure entière
elif ["$reponse" = "4" ]; then
				echo -n "Voulez-vous créer l'arboréssance (Oui/non?) : "
			read ouinon
			if [ "$ouinon" = "Oui" ] || [ "$ouinon" = "y" ]; then
			    

			    echo n- "Quel noms de projet? "
			    read noms
	
			    mkdir p- $noms/{script,img,css}
			    touch $noms/script/script.js
			    touch $noms/css/style.css
			    touch $noms/index.html

															    echo '<!doctype html>
												<html lang="fr">
												<head>
												  <meta charset="utf-8">
												  <title>Titre de la page</title>
												  <link rel="stylesheet" href="style.css">
												  <script src="script.js"></script>
												</head>
												<body>
												  ...
												  <!-- Le reste du contenu -->
												  ...
												</body>
												</html>' > index.html

			    echo "---------------------------------------------"
			    echo "----------Creation réussite!-----------------"
			    echo "==============================================="

			elif [ "$ouinon" = "Non" ] || [ "$ouinon" = "n" ]; then
			    echo "----Pourquoi vient-tu alors?---------------"
			    echo "================================================"
			    echo "================================================"




else 
echo "-----------------------------"
echo "===L=a===="
echo "--------m=a=t=r=i=c=e==============="
echo "===========-------------4------"
echo "--------------====---==-------é-t-é-------"
echo "-----=------c-o-r=r-o=m-p-u=e--------------------"
echo "------iIERROR!--!--------------------"

echo "----Error-----------------------Error----"
echo "-------------Error----------Error---------"
echo "--------------------Error--------------"