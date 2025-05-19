#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

# Remove existing virtual environment if it exists
if [ -d "venv_stock_app" ]; then
  echo "Removing existing virtual environment..."
  rm -rf venv_stock_app
fi

# Create virtual environment with Python 3.10
echo "Creating virtual environment with Python 3.10..."
python3.10 -m venv venv_stock_app

# Activate the virtual environment
echo "Activating virtual environment..."
source venv_stock_app/bin/activate

# Upgrade pip, setuptools, and wheel to latest
echo "Upgrading pip, setuptools, and wheel..."
pip install --upgrade pip setuptools wheel

# Install dependencies from requirements.txt
echo "Installing dependencies..."
pip install -r requirements.txt

echo "Setup complete! To run your app, activate the venv and launch streamlit:"
echo "source venv_stock_app/bin/activate"
echo "streamlit run app.py"
