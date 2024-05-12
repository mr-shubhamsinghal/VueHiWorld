FROM node:lts-alpine

WORKDIR /home/myuser/app
COPY . .
RUN npm install

EXPOSE 8080
CMD ["npm", "run", "serve"]