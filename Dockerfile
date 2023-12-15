FROM node:20-alpine as builder
WORKDIR /app
COPY package.json package-lock.json ./ 
RUN npm install
COPY . .
RUN npm run build

FROM node:20-alpine
WORKDIR /app
COPY --from=builder /app/dist ./
EXPOSE 3000
CMD ["node", "index.js"]
