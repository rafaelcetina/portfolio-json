# Stage 1: Build the Astro project
FROM node:lts-alpine AS node-builder
WORKDIR /app
COPY . .
RUN npm install -g pnpm
RUN pnpm install
RUN pnpm run build


# Stage 2: Serve the static files with Nginx
FROM nginx:alpine
COPY --from=node-builder /app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]