# Build stage
FROM python:3.9-slim-buster AS builder

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip3 install -r requirements.txt

# Expose port 5000 for the Flask app to run on
EXPOSE 5000

# Run the command to start the Flask app
CMD ["python3","-m", "flask", "run", "--host=0.0.0.0"]
