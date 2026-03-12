FROM node:18-alpine
RUN apk add --no-cache python3 g++ make
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install --only=production
COPY . .
EXPOSE 3000
CMD ["node", "src/index.js"]
