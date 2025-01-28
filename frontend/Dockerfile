# Use the official image as a parent image with the node version 20.17.0
FROM node:16 AS build

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code, including the .env file and server.js
COPY . .

# Build the application
RUN npm run build

# Expose application port
EXPOSE 3000

# Run the application
CMD ["npm", "start"]
