#Use an official phython runtime as the base image
FROM python:3.12-rc-bookworm

#Set the working dir in the container to /app
WORKDIR /app

#Copy the content of the current directory into the working directory in the container (/app)
COPY . /app

#Install required packages
RUN pip install --no-cache-dir -r requirements.txt

#Sets the flask apps environment variable
ENV FLASK_APP=app.py

#Run the command to start the flask app
CMD ["flask", "run", "--host=0.0.0.0"]
