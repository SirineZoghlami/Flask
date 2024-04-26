#!/bin/bash

# Ensure Python 3.8 is installed
if ! command -v python3.8 &> /dev/null; then
    echo "Python 3.8 is not installed. Please install it."
    exit 1
fi

# Ensure pip is installed
if ! command -v pip &> /dev/null; then
    echo "pip is not installed. Please install it."
    exit 1
fi

# Install required Python packages
pip install -r requirements.txt

# If you have any additional build steps, you can add them here

# Optionally, you can run any database migrations or other setup tasks here

# Finally, start your Flask app
python3.8 main.py
