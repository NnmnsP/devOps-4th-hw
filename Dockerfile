# Use a base image with the necessary dependencies
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file to the container
COPY requirements.txt .

# Install the project dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code to the container
COPY . .

# Set any necessary environment variables
ENV ENV_VARIABLE_NAME=value

# Expose the port your application listens on
EXPOSE 8000

# Define the command to run when the container starts
CMD ["python", "app.py"]
