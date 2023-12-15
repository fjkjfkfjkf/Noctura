FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json  
COPY package.json ./
COPY pnpm-lock.yaml ./

# Install dependencies
RUN pnpm install

# Copy source files  
COPY . .

# Build frontend
RUN npm run build

# Expose port
EXPOSE 3000

# Start app  
CMD [ "node", "index.js" ]
