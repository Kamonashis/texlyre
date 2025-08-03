# Use an official Node.js runtime as a parent image
FROM node:20-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN apk add --no-cache git
RUN npm install --production

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on (change if needed)
EXPOSE 5173

# Start the application (adjust if your start script is different)
CMD ["npm", "run", "preview"]