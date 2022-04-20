# melt_BTS_pour_pierre

Passer de large en long avec la fonction "melt", appliqué aux BTS

Il s'agit d'appliquer la fonction "melt" de data.table dans R, expliquée dans cette <a href="https://raw.githubusercontent.com/rstudio/cheatsheets/master/datatable.pdf">cheatsheet</a>, à un <a href="https://data.enseignementsup-recherche.gouv.fr/explore/dataset/fr-esr-parcoursup/information/">jeu de données du MESRI </a> relatif à **Parcoursup 2021 - vœux de poursuite d'études et de réorientation dans l'enseignement supérieur et réponses des établissements.**

Afin d'avoir dans une seule colonne les effectifs d'admis dans chaque type de bac, par spécialité de BTS, j'avais besoin de créer une variable "type de bac" pour ne garder qu'une variable "effectifs d'admis". 

Objectif : ensuite dans le logiciel Tableau, glisser la variable "type de bac" sur la couleur pour créer un stacked bars chart, montrant la part de chaque type de bac parmi les admis dans chaque spécialité de BTS.

Il a d'abord fallu créer un fichier csv où j'avais au préalable renommé les colonnes par un nom du type "Bac_general", "Bac_technologique", "Bac_professionnel" et "Bac_autres".

Le melt fonctionne et crée bien une colonne "Type de bac". Incroyable mais vrai, les valeurs "bac_professionnel", "bac_technologique" etc. apparaissent telles quelles et ne sont pas remplacées par 1, 2, 3, 4. Ce qui m'arrive de façon assez déroutante quand je fais un melt sur plusieurs variable (si, par exemple, j'avais eu un type de bac et la distinction hommes / femmes à redispatcher en longueur). 
