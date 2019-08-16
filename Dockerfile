FROM jenkins:latest


RUN apt-get update
RUN apt-get install -y python python-pip

CMD python maths/fibonacci.py 30
CMD py.test --junit-xml=report.xml
