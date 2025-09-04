# Use the official lightweight Python image
FROM python:3.10-slim

# Set a working directory inside the container
WORKDIR /app

# Copy all project files to the container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000
EXPOSE 5000

# Set the command to run your app
CMD ["python", "app.py"]
