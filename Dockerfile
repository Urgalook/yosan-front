FROM node:lts-alpine3.22
WORKDIR /app
COPY package-lock.json package.json .
RUN npm install
COPY . /app
CMD ["npm", "run", "dev"]