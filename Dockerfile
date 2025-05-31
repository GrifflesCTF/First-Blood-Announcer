FROM python:3.13-slim

# Set the working directory
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the source code
COPY first-blood-announcer.py .

# Copy the .env file
COPY .env .

# Command to run the application
CMD ["python", "first-blood-announcer.py"]