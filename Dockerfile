# FROM hasura/graphql-engine:v1.2.1
# # Enable the console
# ENV HASURA_GRAPHQL_ENABLE_CONSOLE=true
# ENV HASURA_GRAPHQL_DEV_MODE=false
# # Change $DATABASE_URL to your heroku postgres URL if you're not using
# # the primary postgres instance in your app
# CMD graphql-engine \
#     --database-url postgresql://postgres:bragapoin@hello-hasura.coz1kemlydbm.ap-southeast-1.rds.amazonaws.com:5432/hello-hasura \
#     serve \
#     --server-port 80


## Comment the command above and use the command below to
## enable an access-key and an auth-hook
## Recommended that you set the access-key as a environment variable in heroku
#CMD graphql-engine \
#    --database-url $DATABASE_URL \
#    serve \
#    --server-port $PORT \
#    --access-key XXXXX \
#    --auth-hook https://myapp.com/hasura-webhook 
#
FROM node:carbon


# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm install --only=production

# Bundle app source
COPY . .

EXPOSE 8080
CMD [ "npm", "start" ]