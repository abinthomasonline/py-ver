FROM python:X.X.X

WORKDIR /app

COPY main.py .
COPY requirements.txt .
COPY package_iter.sh .

RUN chmod +x package_iter.sh

RUN pip install -r requirements.txt
RUN pip check


CMD ./package_iter.sh
