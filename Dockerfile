FROM geoffreybooth/meteor-base:1.8.1

COPY client /tmp/client/
COPY tests /tmp/tests/
COPY server /tmp/server/
COPY package.json /tmp/
COPY package-lock.json /tmp/
COPY .meteor /tmp/.meteor/

WORKDIR /tmp/

EXPOSE 3000

# Build the app
RUN meteor npm install

# Add extra docker commands here (if any)...

# Run the app
CMD meteor run --allow-superuser