# Stage 1: Build the React application
FROM node:22-alpine AS build

WORKDIR /app

# Install dependencies using the npm lockfile
COPY package.json package-lock.json ./
RUN npm ci --no-audit --no-fund

# Copy application source and build
COPY . .

# Compatibility setting for the existing Webpack 4 build tooling
ENV NODE_OPTIONS=--openssl-legacy-provider

RUN npm run build


# Stage 2: Serve the production build
FROM nginx:1.28-alpine

COPY --from=build /app/build /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
