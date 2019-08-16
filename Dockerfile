FROM python:2.7-slim

# Set the working directory to /app
WORKDIR /maths
#    
#    # Copy the current directory contents into the container at /app
ADD . /maths

RUN apt-get update
RUN apt-get install -y python python-pip

CMD ["py.test", "--junit-xml=report.xml"]
