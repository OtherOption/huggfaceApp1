FROM ubuntu
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y curl
RUN apt install -y python3-dev python3-pip python3-venv
RUN pip install --upgrade tensorflow
RUN pip install transformers
RUN python3 -c "from transformers import pipeline; print(pipeline('sentiment-analysis')('we love you'))"


