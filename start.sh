#!/bin/bash

# Set environment variable
ENV 8080

# Run the Python scripts in the background
python3 clever.py &
python3 fetch.py &
python3 start.py
