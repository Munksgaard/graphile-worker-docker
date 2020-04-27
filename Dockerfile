FROM node:alpine
LABEL description="High performance Node.js/PostgreSQL job queue (also suitable for getting jobs generated by PostgreSQL triggers/functions out into a different work queue)"

RUN yarn add graphile-worker@0.6.0
RUN yarn add faktory-worker@3.3.2

COPY faktory-export.js ./tasks/faktory-export.js

ENTRYPOINT ["yarn", "run", "graphile-worker"]