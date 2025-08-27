# Base image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy requirements if any (empty for now)
# COPY requirements.txt .

# Install dependencies (Flask)
RUN pip install --no-cache-dir flask

# Copy app code
COPY app.py .

# Expose port
EXPOSE 5000

# Default command
CMD ["python", "app.py"]
