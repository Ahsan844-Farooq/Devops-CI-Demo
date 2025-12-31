# Use Python lightweight image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy requirements
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy all code from
COPY . .

# Expose port (if app runs on streamlit or flask)
EXPOSE 5000

# Run your app
CMD ["python", "app.py"]
