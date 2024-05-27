# Use an official Python runtime as a parent image
# FROM docker.io/library/node:20.13.1
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
# COPY . /app
COPY . .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
# RUN pip install Flask

# Make port 80 available to the world outside this container
EXPOSE 8000

# Define environment variable
ENV FLASK_APP=hello.py

# Run flask when the container launches
CMD ["flask", "run", "--host=0.0.0.0", "--port=8000"]
# CMD ["python hello.py", "start"]
