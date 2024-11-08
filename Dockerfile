# Utilise l'image de base de Node.js
FROM node:14

# Définit le répertoire de travail dans le conteneur
WORKDIR /app

# Copie les fichiers package.json et package-lock.json pour installer les dépendances
COPY package*.json ./

# Installe les dépendances
RUN npm install

# Copie le code de l'application
COPY . .

# Expose le port utilisé par Express
EXPOSE 3000

# Commande pour lancer l'application
CMD ["npm", "start"]