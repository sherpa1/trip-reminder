# TRIP REMINDER

## Variables d'environnement

A compléter sur la base des fichiers d'exemple :

- .env.strapi
- .env.mariadb

## Strapi

john@doe.com
Azerty123

http://localhost:1337/admin/

### API Rest

#### Endpoints

- Sign Up : http://localhost:1337/auth/local/register

Requête POST

Body au format JSON

```
{
    "username":"Peter White",
    "email":"peter@white.com",
    "password":"Azerty123"
}
```

- Sign In : http://localhost:1337/auth/local

Requête POST

Body au format JSON
```
{
    "identifier":"peter@white.com",
    "password":"Azerty123"
}
```

- Actions de type CRUD (Create Read Update Delete) :

- http://localhost:1337/trips
- http://localhost:1337/notes
- http://localhost:1337/users

Si l'accès aux données est réservé aux utilisateurs connectés, renseigner le token JWT obtenu après un sign in ou sign up réussi

#### Gestion de l'accès à l'API et des actions autorisées sur les ressources

Pour gérer l'accès aux collections de données

Paramètres / Users & permissions plugin / Rôles & permissions

- Authenticated = utilisateur connecté
- Public = accès sans connexion préalable

Encadré Permissions / Bloc Application

Sélectionner la collection et attribuer les droits pour chaque action que vous souhaitez autoriser

## Adminer

http://localhost:8181

- Serveur : trip_mariadb
- Utilisateur : cf. variables d'environnement
- Mdp : cf. variables d'environnement
- BDD : cf. variables d'environnement

## Commandes Docker Compose

- Initialisation des services
```
docker-compose up
```
- Fermer les services

```
docker-compose stop
```

ou

Raccourci CTRL + C

