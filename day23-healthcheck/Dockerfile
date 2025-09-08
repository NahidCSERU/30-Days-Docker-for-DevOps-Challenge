# Base image
FROM alpine:3.19

# Add a simple script
COPY app.sh /usr/local/bin/app.sh
RUN chmod +x /usr/local/bin/app.sh

# Expose port (dummy web server simulation)
EXPOSE 8080

# Healthcheck instruction
HEALTHCHECK --interval=30s --timeout=5s --start-period=10s --retries=3 \
  CMD wget -qO- http://localhost:8080/ || exit 1

# Run the app
CMD ["/usr/local/bin/app.sh"]
