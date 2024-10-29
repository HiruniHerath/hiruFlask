# Use an official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements and install dependencies
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire application to the container
COPY . .

# Expose the port Flask runs on
EXPOSE 5001

# Run the application
CMD ["python", "app.py"]
