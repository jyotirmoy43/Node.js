# Use official Node.js image
FROM node:18

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy application source
COPY . .

# Expose port (example: 3000)
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
