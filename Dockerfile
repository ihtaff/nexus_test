# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the image file system
WORKDIR /app

# Copy the package.json and package-lock.json files to the working directory
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the application source code to the working directory
COPY . .

# Specify the command to run the application when the image is started as a container
CMD [ "npm", "start" ]
