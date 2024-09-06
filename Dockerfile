# Use the official Node.js image from the Docker Hub
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy only package.json and package-lock.json first to leverage Docker cache for dependencies
COPY package*.json ./

# Install the application dependencies
RUN npm install

# Copy only the necessary application files (e.g., src folder) 
COPY ./src ./src
COPY ./public ./public
COPY ./config ./config
COPY app.js ./

# Expose the port the app will run on
EXPOSE 3000

# Define the command to run the application
CMD [ "node", "app.js" ]
