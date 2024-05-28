# Use an official Python runtime as a parent image
# FROM docker.io/library/node:20.13.1
# FROM node:20.13.1
# FROM python:3.9-slim
FROM ubuntu:20.04

# Set environment variables to non-interactive to avoid prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Update the package list and install Python and other necessary packages
RUN apt-get update && \
    apt-get install -y python3 python3-pip python3-dev && \
    apt-get clean

# Update the package list and install Python and other necessary packages
RUN apt-get update && \
    apt-get install -y python3 python3-pip python3-dev && \
    apt-get clean

# Copy the current directory contents into the container at /app
# COPY . /app
COPY . .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install Flask

# Make port 80 available to the world outside this container
EXPOSE 8000

# Define environment variable
ENV FLASK_APP=hello.py

# Run flask when the container launches
CMD ["flask", "run", "--host=0.0.0.0", "--port=8000"]
# CMD ["python hello.py", "start"]
