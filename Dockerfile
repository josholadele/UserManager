FROM node

RUN mkdir -p /josh/app
# Create app directory
WORKDIR /josh/app

# Install app dependencies
COPY package.json /josh/app/

RUN npm install
# If you are building your code for production
# RUN npm install --only=production

# Bundle app source
COPY . /josh/app

EXPOSE 3000

CMD [ "npm", "start" ]