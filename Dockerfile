FROM node:0.12

# Create app directory
RUN mkdir -p /usr/src/app/client
WORKDIR /usr/src/app

# Install app dependencies
ADD package.json /usr/src/app
ADD .bowerrc /usr/src/app
ADD bower.json /usr/src/app

RUN npm install -g bower
RUN npm install

RUN bower install --allow-root


# Bundle app source
ADD . /usr/src/app

EXPOSE 80
CMD [ "npm", "start" ]
