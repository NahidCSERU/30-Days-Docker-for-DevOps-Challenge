# Day 8 – First Dockerfile for Node.js (Express)

# Use small, secure base image
FROM node:20-alpine

# App directory
WORKDIR /app

# Set production mode (affects npm install)
ENV NODE_ENV=production
# Ensure logs appear immediately
ENV NODE_OPTIONS=--enable-source-maps

# Install dependencies first (better layer caching)
COPY package.json ./
# If you later add package-lock.json, switch to: npm ci --omit=dev
RUN npm install --omit=dev

# Copy source
COPY src ./src

# Create non-root user (good practice) and use it
RUN addgroup -S app && adduser -S app -G app
USER app

# App listens on 3000
EXPOSE 3000

# Start command
CMD ["node", "src/index.js"]
