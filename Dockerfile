# Use the official Node.js image.
FROM node:12.2.0-alpine

# Set the working directory.
WORKDIR /node

# Copy package.json and package-lock.json.
COPY package*.json ./

# Install dependencies.
RUN npm install

# Copy the rest of the application code.
COPY . .

# Expose the port the app runs on.
EXPOSE 8070

# Command to run the application.
CMD ["node", "server.js"]