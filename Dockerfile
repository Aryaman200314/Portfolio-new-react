# Use an official Node.js v23 image from DockerHub (if available)
FROM node:23.8.0-alpine 

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire project into the container
COPY . .

# Build the React project
RUN npm run build

# Expose port 3000 (default for React)
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
