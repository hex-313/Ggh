FROM node:lts-buster

WORKDIR /app
COPY package-s.json .
COPY setup-s.sh .
RUN bash setup-s.sh
COPY yarn-s.lock .
RUN yarn
COPY . .
ENV PORT=8080
EXPOSE 8080
CMD ["bash", "start-s.sh"]
