FROM python:3.8.0-slim
LABEL maintainer=bonboyaju19@gmail.com

COPY requirements.txt ./
RUN  pip install --no-cache-dir -r requirements.txt && \
     apt install -y openssh

CMD ["ansible-playbook", "--version"]