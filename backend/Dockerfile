# Use the official image as a parent image with the node version 20.17.0
FROM node:20.17.0-alpine

# Set the working directory to /app
WORKDIR /backend

# Copy package.json and package-lock.json first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code, including the .env file and server.js
COPY . .

# Expose application port
EXPOSE 3002

# Run the application
CMD ["npm", "start"]
