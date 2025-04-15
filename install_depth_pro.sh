#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

# Clone the repository
echo "Cloning ml-depth-pro repository..."
git clone https://github.com/apple/ml-depth-pro.git

# Navigate into the repository directory
cd ml-depth-pro

# Install the package in editable mode
echo "Installing ml-depth-pro package..."
pip install -e .

# Download the pretrained models
echo "Downloading pretrained models..."
bash get_pretrained_models.sh

# Navigate back to the original directory
cd ..

echo "ml-depth-pro installation complete." 