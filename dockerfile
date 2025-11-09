# Step 1: Use Node.js LTS as base image
FROM node:18

# Step 2: Set working directory inside container
WORKDIR /app

# Step 3: Copy package.json & install dependencies
COPY package*.json ./
RUN npm install

# Step 4: Copy app source code
COPY . .

# Step 5: Expose port
EXPOSE 3000

# Step 6: Run the app
CMD ["npm", "start"]
