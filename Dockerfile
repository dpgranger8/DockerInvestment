# Use an official Node.js image
FROM node:18

# Set working directory inside the image
WORKDIR /app

LABEL maintainer = "David Granger"
LABEL description = "Getting used to Docker"
LABEL cohort = "January 2025 Cohort"
LABEL animal = "Docker whale"

# Copy package.json and package-lock.json first (to leverage Docker cache)
COPY package*.json ./

# Install dependencies inside the image
RUN npm install

# Copy the rest of your app code
COPY . .

# Expose a port
EXPOSE 5005/tcp

# Default command to run your JS file (adjust this if your entry point has a different name)
CMD ["node", "app.js"]
