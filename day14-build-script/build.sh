#!/bin/bash
# build.sh - Automate build process for C project (inside/outside Docker)

set -e  # Exit if any command fails

echo "=============================="
echo "🔹 Starting Build Process"
echo "=============================="

# Step 1: Clean old build
./clean.sh

# Step 2: Compile source code
echo "🔹 Compiling source files..."
gcc src/main.c -o app

# Step 3: Run program
echo "🔹 Executing program..."
./app

echo "=============================="
echo "✅ Build Completed Successfully"
echo "=============================="
