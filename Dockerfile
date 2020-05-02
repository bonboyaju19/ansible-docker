FROM python:3.8.0-slim
LABEL maintainer=bonboyaju19@gmail.com

COPY requirements.txt ./
RUN apt upgrade && \
    apt update && \
    apt install -y ssh && \
    pip install --no-cache-dir -r requirements.txt

CMD ["ansible-playbook", "--version"]