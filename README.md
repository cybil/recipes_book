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
  `name` : le nom de la recette
  `description` : les instructions de la recette
  `draft` : si la recette est en l'état de brouillon ou non
  `status` : le statut de la recette ayant les valeurs suivantes "pending", "validated", "rejected", "aborted"
- Faire en sorte de pouvoir lister la totalité des recettes via un appel API sur l'endpoint : `/v1/recipes` en pouvant préciser si on souhaite l'ensemble des recettes, ou seulement celles avec un certain statut. L'utilisateur faisant l'appel API doit être authentifié.
- Pousser le travail sur la branche git et créer la Pull Request correspondante sur Github.


Tips : utilise l'interface admin pour créer des recettes et des utilisateurs, ou créer les directement en base de données.

## Exercice 2

### Compétences
... à venir ;) ...