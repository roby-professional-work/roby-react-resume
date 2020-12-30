FROM node:14

#create WORKDIR
WORKDIR /usr/src/app

#grab json package files
COPY package*.json ./

#install npm packages
RUN npm install

#Copy all Source code to /usr/src/app/
COPY . .

#Expose port 3000 to the app
EXPOSE 3000

CMD ["npm", "run", "build"]
