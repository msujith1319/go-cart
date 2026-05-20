FROM node:20-slim
RUN useradd -m -d /app -s /bin/bash sujith
WORKDIR /app
COPY --chown=sujith:sujith package*.json ./
USER sujith
RUN npm install
COPY --chown=sujith:sujith . .
RUN npm run build
EXPOSE 4000
CMD ["npm","start"]

