FROM node:13

# Create app directory
WORKDIR /usr/src/app

# copy json files across
COPY package*.json ./

#install the packages
RUN npm install

# copy app into the docker image
COPY . .

#set port#
EXPOSE 8080

#fire in the hole
CMD [ "npm", "run", "prod" ]