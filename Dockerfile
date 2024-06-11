FROM python:3.11-slim 

WORKDIR /app

# 安装 git
RUN apt-get update && apt-get install -y git

COPY requirements.txt /app/
RUN uname -m
RUN pip install --no-deps -r requirements.txt --platform linux/$(uname -m)

COPY . /app

CMD ["python", "main.py"]
