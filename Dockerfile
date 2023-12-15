from node:20
workdir /app
copy package*.json ./
run npm install
copy . .
expose 3000
cmd ["npm", "start"]
