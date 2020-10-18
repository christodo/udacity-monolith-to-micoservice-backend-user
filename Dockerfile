FROM node:10

ENV POSTGRES_USERNAME="postgres" \
    POSTGRES_PASSWORD="7Mshfy_GXLhDDTF*t9Z&" \
    POSTGRES_HOST=udacity-monolith-to-microservices.cxnfhyr90gh2.eu-west-1.rds.amazonaws.com \
    POSTGRES_DB=postgres \
    AWS_BUCKET=udacity-monolith-to-microservices-udacity-account \
    AWS_REGION=eu-west-1 \
    AWS_PROFILE=udt \
    JWT_SECRET=hello \
    URL=http://localhost \
    PORT=8081 \
    ORIGIN_URL=http://localhost:8100

WORKDIR /home/node/app
COPY . .
RUN npm set cache .npm
RUN npm ci --only=production

EXPOSE 8081
CMD [ "node", "./www/server.js"]
