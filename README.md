# Recipes Book project

Ce projet est une API pour mettre en application les principes de Rails. Il met en situation une liste de recette de cuisine, pouvant être approuvée ou non par la communauté d'utilisateur.
Une interface admin est disponible pour gérer les comptes et les recettes au besoin.
Les utilisateurs, qu'ils soient chefs ou critiques culinaires doivent passer par l'API pour intéragir avec la base de données.


## Quelques gems installées
- [ActiveAdmin](https://github.com/activeadmin/activeadmin) pour une interface d'administration clef en main
- [Devise](https://github.com/plataformatec/devise) pour l'authentification
- [Jbuilder](https://github.com/rails/jbuilder) pour générer les vues JSON rendues par les endpoints de controller
- [Byebug](https://github.com/deivid-rodriguez/byebug) pour débugger
- [RSpec](https://github.com/rspec/rspec) pour tester


## Pré-requis

- Installer Ruby version 3.1.2.
- Vérifier que toutes les commandes suivantes fonctionnent :
  `rails c`
  `bundle exec rspec`
- lancer le serveur
- accéder à `localhost:3000/admin/login` et se connecter avec le compte Admin par defaut :
email : admin@example.com
password : 'password'

## Exercice 1

### Compétences
- connaissance de github
- commandes de base de git
- migration de données : création d'une table
- modèle Rails : validations
- controller : listing avec filtres

### Todo

- Créer une nouvelle branche nommée "bastien/exo_1" en utilisant `git` , puis faire la totalité de l'exercice dans cette branche
- Ajouter un nouveau modèle `Recipe` qui correspond à une recette de cuisine, en choisissant le bon type pour chaque attribut:

- `name` : le nom de la recette
- `description` : les instructions de la recette
- `draft` : si la recette est en l'état de brouillon ou non
- `status` : le statut de la recette ayant les valeurs suivantes "pending", "validated", "rejected", "aborted"

- Faire en sorte de pouvoir lister la totalité des recettes via un appel API sur l'endpoint : `/v1/recipes` en pouvant préciser si on souhaite l'ensemble des recettes, ou seulement celles avec un certain statut. L'utilisateur faisant l'appel API doit être authentifié.
- Faire en sorte de pouvoir gérer les recettes depuis active admin
- Pousser le travail sur la branche git et créer la Pull Request correspondante sur Github.


Tips : utilise l'interface admin pour créer des recettes et des utilisateurs, ou créer les directement en base de données.

## Exercice 2

### Compétences
- migration : ajout de colonne
- tester avec Rspec : modèle et controller
- controller : création et listing avec relation

### Todo

- Ajouter la notion de Commentaire sur une recette. Une recette peut avoir plusieurs commentaires laissés par différents utilisateurs qui doivent être identifiés
- Faire en sorte qu'un utilisateur authentifié puisse créer un commentaire sur une recette via cet endpoint `/v1/comments`
- Faire en sorte de pouvoir lister l'ensemble des commentaires d'une recette dans un endpoint dédié `/v1/comments?receipe_id=xxxx`
- Ajouter des tests en utilisant la gem Rspec :

- tester le modèle `Recipe` et le modèle des commentaires
- tester le controller des recettes
- tester le controller des commentaires

Tips : un guide complet sur [Rspec](https://www.lambdatest.com/learning-hub/rspec-ruby)

## Exercice 3

### Compétences
- migrations
- hook sur les modèles
- testing
- controller : mise à jour

### Todo

- Ajouter la notion de "note" sur une recette. Il s'agit d'un chiffre allant de 0 à 5.
- Ajouter la même notion de note sur 5 pour les commentaires.
- À chaque fois qu'un nouveau commentaire est ajouté, mettre à jour la note de la recette en fonction des notes des commentaires : faire une moyenne sur 5.
- Faire en sorte de pouvoir modifier une recette via l'endpoint dédié `/v1/recipes/:id`
- Ajouter les tests correspondants sur le modèle Recipe et Comment

## Exercice 4

### Compétences
- concerns
- migration
- validations de modèle
- rspec

### Todo

- Ajouter la notion de FoodCritic, qui représente les caractéristiques d'un utilisateur qui est une critique culinaire. Ce type d'utilisateur doit avoir les information suivantes : 

- `newsletter_name` : le nom du journal dans lequel ses critiques sont publiées
- `kind` : le genre de la critique pouvant avoir les valeurs suivantes : "nice", "fair", "hard"
- rattaché à un User

- Ajouter la notion de Chef, qui représente les caractéristiques d'un utilisateur qui est un Chef cuisinier. Ce type d'utilisateur doit avoir les informations suivantes : 

- `restaurant_name` : le nom de son restaurant
- `nb_stars` : le nombre d'étoile
- `best_worker` : si oui ou non le Chef est qualifié de "meilleur ouvrier de France"
- rattaché à un User

- Mettre à jour les tests

Tips : Lis un peu de documentation sur les [Concerns](https://api.rubyonrails.org/v7.0.5/classes/ActiveSupport/Concern.html) pour ne pas mettre toute la logique dans le modèle User

## Exercice 5

### Compétences
- policies
- rspec

### Todo
- Faire en sorte que seuls les "Chefs" puissent créer et modifier leurs propres recettes
- Ajouter des tests sur le controller des Recipes

Tips : la gem [Pundit](https://github.com/varvet/pundit) est ton amie. Lis bien la documentation.

## Exercice 6

### Compétences
- migration
- controller : listing filtre
- algo
- rspec

### Todo

- Ajouter la notion de `veggie` et `vegan` aux recettes.
- Ajouter une photo aux recettes
- Faire en sorte qu'un commentaire laissé par une FoodCritic soit comptabilisé en fonction de son `kind` selon la règle suivante : 

- nice = x0.5
- fair = x1
- hard = x1.5

Les commentaires des autres utilisateurs comptent ont un ratio de 1.

- Mettre à jour les tests en conséquence.

## Exercice 7

### Compétences
- mailer

### Todo
- Lorsqu'une FoodCritic laisse un commentaire, envoyer un email au Chef pour lui transmettre le-dit commentaire. (Contenu du mail libre tant qu'il contient les infos de la FoodCritic et du Comment)

Tips : La [documentation officielle](https://guides.rubyonrails.org/action_mailer_basics.html). La gem `letter_opener` est déjà installée pour visualiser les emails que tu envoies automatiquement.

## Exercice 8

### Compétences
- rake task
- mailer
- query

### Todo
- Créer une tâche automatisée pour que, chaque lundi, chaque Chef reçoive un email lui indiquant : 

- sa recette ayant le plus de succès
- sa recette ayant le moins de succès
- le top 3 des commentaires de ses recettes
- La meilleure recette parmis la totalité existante avec le nom du chef, sauf si c'est la sienne.

Tips : Les tâches `rake` sont des bout de code qui peuvent de lancer via une ligne de commande, très pratique pour les actions répétables. Voici un [petit article](https://medium.com/geekculture/writing-custom-rake-tasks-f656f43336cc) très sympa.

## Ressources
- [REST routes](https://medium.com/@shubhangirajagrawal/the-7-restful-routes-a8e84201f206) pour bien comprendre la nomenclature des endpoints d'API


