FROM python:3.12-slim

WORKDIR /app

COPY item_tracking_system.py .
COPY items.json .
COPY README.md .

CMD ["python", "item_tracking_system.py"]