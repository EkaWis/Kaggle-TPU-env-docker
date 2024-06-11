FROM python:3.11-slim 

WORKDIR /app

# 安装 git
RUN apt-get update && apt-get install -y git

COPY requirements.txt /app/
ENV PLATFORM $(uname -m)
RUN pip install -r requirements.txt --platform linux/$PLATFORM
RUN pip install -r requirements.txt

COPY . /app

CMD ["python", "main.py"]
