# Use the official Node.js image from the Docker Hub
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (or yarn.lock) to the working directory
COPY package*.json ./

# Install the application dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port the app will run on
EXPOSE 3000

# Define the command to run the application
CMD [ "node", "app.js" ]
