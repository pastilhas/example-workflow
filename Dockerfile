FROM python:3.12-slim

WORKDIR /app

COPY process_data.py .

ENTRYPOINT ["python", "process_data.py"]