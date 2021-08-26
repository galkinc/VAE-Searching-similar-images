FROM python:3.8
RUN mkdir /flaskapp
ADD model /flaskapp/model
ADD static /flaskapp/static
ADD templates /flaskapp/templates
ADD embeddings.npy /flaskapp
ADD feature_extractor.py /flaskapp
ADD img_paths.json /flaskapp
ADD requirements.txt /flaskapp
ADD server.py /flaskapp
WORKDIR /flaskapp
RUN pip install -r requirements.txt
CMD ["python", "server.py"]