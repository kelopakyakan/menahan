FROM python:3.9.7-slim-buster

# Update and upgrade system packages
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y \
    ffmpeg \
    neofetch \
    mediainfo \
    p7zip-full

# Copy application code into the container
COPY . /app/

# Set the working directory
WORKDIR /app/

# Install Python dependencies from requirements.txt
RUN pip3 install flask flask_restful


# Set the CMD to start the application
CMD ["bash", "start.sh"]
