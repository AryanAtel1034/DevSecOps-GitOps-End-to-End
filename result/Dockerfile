# Use amd64 base for compatibility in multi-arch builds
FROM --platform=$BUILDPLATFORM node:18-bullseye

# Install curl and tini safely
RUN apt-get update && \
    apt-get install -y --no-install-recommends curl tini && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /usr/local/app

# Install nodemon globally
RUN npm install -g nodemon

# Copy package files first for caching
COPY package*.json ./

# Install dependencies
RUN npm ci && \
    npm cache clean --force && \
    mv /usr/local/app/node_modules /node_modules

# Copy rest of the app
COPY . .

# Set environment
ENV PORT=80
EXPOSE 80

# Use tini as init process
ENTRYPOINT ["/usr/bin/tini", "--"]
CMD ["node", "server.js"]
