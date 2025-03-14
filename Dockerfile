# Dockerfile

# Use the official Nginx image to serve the build files
FROM nginx:alpine

# Copy the build folder from the local machine to the Nginx container
COPY build/ /usr/share/nginx/html

# Expose port 80 (default port for Nginx)
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]