FROM node:22-slim AS build
WORKDIR /app

# Sengaja hanya copy package.json, bukan lockfile,
# supaya npm memilih binary Rolldown yang cocok untuk Linux
COPY package.json ./
RUN npm install

COPY . .
RUN rm -rf node_modules/.cache && npm run build

FROM nginx:alpine
COPY --from=build /app/dist /usr/share/nginx/html
EXPOSE 80