# Use Node.js version 20 as the base image
FROM node:20

# Set the working directory inside the container  
WORKDIR /app

# Copy the application files to the working directory   
COPY . .

# Install dependencies
RUN npm install

# Build the website
RUN npm run build 

# Expose the desired port (change it according to the application)
EXPOSE 3000

# Start the application
CMD [ "npm", "start" ]
