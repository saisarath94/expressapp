# use official node.js 18 image based on alpine
FROM :18-alphine

#create and set working directory
WORKDIR /usr/src/app

#copy package.json and package-lock.json from the directory
COPY package*.json ./

#Install the dependencies
RUN npm install

# copy the rest of the application code from the working directory
COPY . . 

# Expose to port to run the application on port 8080
EXPOSE 8080

#Command to run the application
CMD ['npm', 'start']