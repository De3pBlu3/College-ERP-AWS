# Use an official Python runtime as a parent image
FROM python:3.11.5

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /CERP

# Install dependencies
COPY requirements.txt /CERP/
RUN pip install --no-cache-dir -r requirements.txt


# Copy project
COPY . $SRCDIR

# copy static files
#RUN python manage.py collectstatic --noinput


EXPOSE 8000
# Create the directory for the SQLite database, set the correct permissions, and run the script

#CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
#