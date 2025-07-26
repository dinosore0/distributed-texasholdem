FROM node:18-alpine
# Create app directory
WORKDIR /app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

# Expose the app port
EXPOSE 8688

# Start the app
CMD ["npm", "start"]