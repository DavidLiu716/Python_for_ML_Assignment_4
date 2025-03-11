# Use a lightweight Python image
FROM python:3.11-slim

# Set working directory inside the container
WORKDIR /app

# Copy requirements.txt and install dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Create /app/data directory (in case it's not mounted)
RUN mkdir -p /app/data

# Run the script on container startup
CMD ["python", "app.py"]