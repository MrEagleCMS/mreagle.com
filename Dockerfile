FROM node:alpine3.18

ENV NODE_ENV=production
ENV ORIGIN=${ORIGIN}

WORKDIR /app
COPY . .

#RUN npm install
#RUN npx prisma generate

ENV PORT=80
EXPOSE ${PORT}

CMD ["node", "./build/index.js"]
