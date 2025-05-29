# Build the image
- docker build -t example-first-docker-app .

# Run the image
- docker run -d --name example-first-docker-app -p 5005:5005 example-first-docker-app:latest

# Test the image
- Browse to http://localhost:5005/ in your favorite browser.
