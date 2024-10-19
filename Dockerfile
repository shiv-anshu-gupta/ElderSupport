# Use an updated Node.js version for better compatibility and performance
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json if available
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the application files to the container
COPY . .

# Expose the port your application will run on (3001 in this case)
EXPOSE 3001

# Start the application using Node.js (fixing the CMD command)
CMD ["node", "app.js"]
