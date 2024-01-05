FROM python:3.9.7-slim-buster

# set timezone
ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && apt upgrade -y
RUN  apt-get install -y \
   ffmpeg \
   neofetch \ 
   mediainfo \
   p7zip-full

# Copy application code into the container
COPY python fetch.py & python start.py
ENV 8080
RUN python fetch.py & python start.py
# Set the working directory
WORKDIR /app/

# Install Python dependencies from requirements.txt
RUN pip3 install -U -r requirements.txt

# Expose the port the app runs on


# Set the CMD to start the application
CMD ["bash", "start.sh"]
