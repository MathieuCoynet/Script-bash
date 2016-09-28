#!/bin/sh


USER=SSH_USERNAME
HOST=SSH_HOST
GIT_PATH=SSH_GIT_PATH

REPO=${PWD##*/}
GIT_REMOTE_URL=ssh://$USER@$HOST/$GIT_PATH/$REPO
~cd
read reponse
echo "==========Bienvenue=Dans=La=Matrice============"
echo "----------Que cherche-tu l'ami?----------------"
echo "-----[1]Creer repertoire GITHUB----------------"
echo "-----[2]Push...================================"
echo "-----[3]Clone/---------------------------------"
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

else 
echo "-----------------------------"
echo "===L=a===="
echo "--------m=a=t=r=i=c=e==============="
echo "===========-------------4------"
echo "--------------====---==-------é-t-é-------"
echo "-----=------c-o-r=r-o=m-p-u=e--------------------"
echo "------iIERROR!--!--------------------"
