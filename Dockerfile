#Docker file for the Flask app based on the tutorial by prakhar1989

# NOTE: dockerfiles don't support inline comments with commands

# Use the official Python 3.8 image as the base image
FROM python:3.8 

# set working directory
WORKDIR /usr/src/app

# copy all files in repo to the container
COPY . .

# install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# expose port 5000 to the world
EXPOSE 5000

# run the application
CMD ["python", "app.py"]
