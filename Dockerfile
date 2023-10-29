# Use an official Node runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Bundle your app source
COPY . .

# Your app binds to port 80 so it must expose that port
EXPOSE 80

# Define the command to run your app
CMD ["npm", "start"]
