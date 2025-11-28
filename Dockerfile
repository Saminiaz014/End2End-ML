FROM python:3.11-slim

WORKDIR /app

# Copy requirements first
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy everything
COPY . .

# Expose port
EXPOSE 8080

# Use python directly (not gunicorn yet)
CMD ["python", "app.py"]