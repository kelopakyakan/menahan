FROM python:3.9.7-slim-buster

# Copy application code into the container
COPY . /app/

# Set the working directory
WORKDIR /app/

# Install Python dependencies from requirements.txt
RUN pip3 install -U -r requirements.txt

# Expose the port the app runs on
ENV 8080

# Set the CMD to start the application
CMD ["bash", "start.sh"]
