# Use official Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy only requirements first (for caching)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the app source code
COPY app/ ./app

# Expose port
EXPOSE 5000

# Run Flask app
CMD ["python", "app/app.py"]
