FROM arm32v7/python:2.7.13-jessie

WORKDIR /flask-app

COPY requirements.txt .

RUN pip install --trusted-host pypi.org --trusted-host
pypi.python.org --trusted-host files.pythonhosted.org -r
requirements.txt 

COPY ./app ./app 

CMD ["python", "./app/app.py"]
