# Use official Python image
FROM python:3.11-slim

# Set the working directory
WORKDIR /app

# Copy the Python script
COPY random_number_generator.py .

# Run the Python app by default
CMD ["python", "random_number_generator.py"]
