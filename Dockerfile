FROM python:alpine3.8

# Install Flask server
RUN pip install flask 
RUN pip install flask_prometheus

# Copy local directory "src" to container filesystem "/src"
COPY src /src

EXPOSE 80

CMD ["python", "/src/main.py"]
