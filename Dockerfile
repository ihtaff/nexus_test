# Use an official Node.js runtime as the base image
FROM node:14-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the application source code to the Docker image
COPY . /app

# Install the application dependencies
RUN npm install

# Set the default command to run when the container starts
CMD ["npm", "start"]
