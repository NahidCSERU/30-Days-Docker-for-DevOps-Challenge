# Use official Nginx image
FROM nginx:alpine

# Remove default nginx html files
RUN rm -rf /usr/share/nginx/html/*

# Expose default Nginx port
EXPOSE 80

# Default command
CMD ["nginx", "-g", "daemon off;"]
