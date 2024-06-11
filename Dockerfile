FROM python:3.10-slim

WORKDIR /app

# 安装 git
RUN apt-get update && apt-get install -y git

COPY requirements.txt /app/
RUN pip install -r requirements.txt

COPY . /app

CMD ["python", "main.py"]
