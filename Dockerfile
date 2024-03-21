# Use an official Python runtime as a parent image
FROM python:latest

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /code

# Install dependencies
COPY requirements.txt /code/
RUN pip install --no-cache-dir -r requirements.txt

RUN pip install uwsgi

# Copy the current directory contents into the container at /code/
COPY . /code/

# Run the command to start uWSGI
CMD ["uwsgi", "--http", ":8000", "--module", "djangodockertemplate.wsgi"]