# Use official Python image as base
FROM python:3.11-slim

# Set working directory
WORKDIR /usr/src/app

# Copy app files
COPY app/ .

# Install dependencies (if any)
RUN pip install --no-cache-dir flask

# Expose port
EXPOSE 5000

# Default command
CMD ["python", "app.py"]
