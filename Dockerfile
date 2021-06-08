# We need python 3.8
FROM python:3.8

# make the working directory in the container
RUN mkdir /app

# specify where to install the app
WORKDIR /app/

#  add all files to the working directory
ADD . /app/

# Install the dependecies in the requirements file.
RUN pip install -r requirements.txt

# Run the app
CMD ["python", "/app/app.py"]