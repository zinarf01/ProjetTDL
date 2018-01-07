# ProjetTDL
Langage : PERL


ce projet consiste a réaliser une application qui prend en entrée un automate non déterministe et rend le même automate déterminisé
Chaque fichier dans ce repertoire contient soit une fonction du code soit une partie ajoutée , le code est reparti sur 5 fonctions testees chacune a part 


IMPORTANT: le fichier PROJET_FINAL.pl  est le projet rassemblé,  vous devez inserer l'automate , il ya deja un automate mis en commentaire au debut du fichier vous pouver le decommenter pour l'utiliser commenter la ligne d'apres pour ne pas le remplir d'une manier manuel.


NB: En effet, on voulait vous dire monsieur, que vu qu'on a rédige le code du projet en se basant sur nos connaissances personnels et sans avoir recours a n'import quel code sur internet (vous pouvez vérifier ça avec un détecteur de plagiat ) , on a eu un problème pendant la compilation. il y'a une condition qu'on doit vérifie a chaque étape ( si l’état généré d'un passage d'un état initial avec une transition donnée n'est pas déjà existante dans l'automate déterministe alors on doit l'ajouter sinon il suffit de dessiner la transition ) . Sans cette condition le code boucle d'une manière infinie et le problème c'est que quand on l’implémente  le programme s’arrête dans la 2ème itération, on a fait de notre mieux pour trouver la source de l’erreur mais on a pas arriver a la détecter. 
Merci monsieur de prendre cela  en considération, parce que a part cette condition notre code est correct et traite tous les cas possibles ( cas d'un NFA et le cas du epsilon-NFA aussi ). 
On espère que vous prenez nos efforts en considération car c'est ce qu'on a pu réaliser avec un nouveau langage sophistiqué qu'on maîtrise pas a 100%.
