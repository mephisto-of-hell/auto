FROM python:3.10

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY . .


RUN pip3 install -U pip && pip3 install -U -r requirements.txt

CMD ["python3", "bot.py"]
