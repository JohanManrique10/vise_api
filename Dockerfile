# imagen 
FROM node:18-alpine

# directorio
WORKDIR /app

# copia las dependencias
COPY package*.json ./

# installa dependencias
RUN npm install

# Copiar el resto del código
COPY . .

# construye la app
RUN npm run build

# Exponer puerto
EXPOSE 3000

# Iniciar la app
CMD ["npm", "start"]
