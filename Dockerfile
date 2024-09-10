# Use an official Python runtime as a parent image
FROM python:3.12

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the dependencies (FastAPI, Uvicorn, psycopg2)
RUN pip install --no-cache-dir -r requirements.txt

# Expose the FastAPI app port
EXPOSE 8000

# Start the FastAPI app
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

