FROM python:2.7.14

WORKDIR /app/
ADD . .

RUN pip install git+https://github.com/tmbo/MITIE.git
RUN pip install -r requirements.txt
# RUN python -m spacy download en_core_web_md
# RUN python -m spacy link en_core_web_md en

EXPOSE 5000

CMD ["python", "-m rasa_nlu.server -c config.json"]
