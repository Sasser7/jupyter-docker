FROM python:3.12-slim
EXPOSE 8888

# Copy the requirements.txt to the root of the container
COPY requirements.txt .

# Install required packages and run the notebook
RUN pip install -r requirements.txt
RUN pip install jupyterlab

WORKDIR /home/jovyan/work
CMD [ "jupyter", "lab" ]