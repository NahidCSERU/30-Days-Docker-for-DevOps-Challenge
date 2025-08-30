# Stage 1: Build
FROM gcc:12 AS builder

# Set working directory inside container
WORKDIR /app

# Copy project files
COPY . .

# Make scripts executable
RUN chmod +x build.sh clean.sh

# Run build script (compilation inside Docker)
RUN ./build.sh

# Stage 2: Runtime (lightweight image)
FROM debian:bullseye-slim

WORKDIR /app

# Copy compiled binary from builder stage
COPY --from=builder /app/app .

# Command to run the program
CMD ["./app"]
