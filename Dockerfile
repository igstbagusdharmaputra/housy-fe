# NODE:10
#FROM node:10
 
#WORKDIR /usr/src/app
 
#COPY package*.json ./
 
#RUN npm install
 
#COPY . .
 
#EXPOSE 3000
 
#CMD [ "npm", "start" ]

#MULTI STAGE BUILD

#FROM node:10-alpine as build
#WORKDIR /app
#ENV PATH /app/node_modules/.bin:$PATH
#COPY package.json ./
#COPY package-lock.json ./
#RUN npm install
#RUN npm install react-scripts  -g --silent
#COPY . ./
#RUN npm run build

#FROM nginx:stable-alpine
#COPY --from=build /app/build /usr/share/nginx/html
#EXPOSE 80
#CMD ["nginx", "-g", "daemon off;"]

#NODE ALPINE
  
FROM node:10-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "npm", "start" ]

#RUN mkdir /app
#WORKDIR /app
#ENV PATH /app/node_modules/.bin:$PATH

#COPY package*.json ./

#RUN npm install --silent
#RUN npm install react-scripts -g --silent

#COPY . ./

#EXPOSE 3000
#CMD ["npm", "start"]
