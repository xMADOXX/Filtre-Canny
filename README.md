# Filtre de Canny

Ce projet vise à mettre en oeuvre le filtre de Canny sur une image. Ce filtre est énormément utilisé pour le traitement d'images afin de détecter les contours d'une image.

## Pour commencer

Ces instructions vous permettront d'obtenir une copie du projet opérationnel sur votre machine locale à des fins de développement et de test. Voir déploiement pour les notes sur la façon de déployer le projet sur un système actif.

### Installation

git clone https://github.com/xMADOXX/Filtre-Canny.git

ou

télécharger le fichier ZIP.

## Tester le projet

Pour pouvoir tester vous même le programme vous devez utiliser la fonction :  
filtreCanny(chemin, img, seuil)  

Les paramètre de cette fonction sont :  

chemin : chemin vers le dossier Filtre-Canny/  
img : chemin vers l’image à utiliser, vous pouvez utiliser des images prédéfinies avec IMAGE1, IMAGE2, IMAGE3, IMAGE4  
seuil : facteur déterminant le seuil haut de l’hysteresis, faire varier de 70 à 95  

exemple: filtreCanny('c:/Filtre-Canny/','c:/images/mon_image.png', 85);
