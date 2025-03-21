FROM python:3.10
WORKDIR /code
COPY ./requirement.txt /code/requirement.txt
RUN pip install --no-cache-dir --upgrade -r /code/requirement.txt
COPY ./main.py /code/main.py
COPY ./form.html /code/form.html
CMD ["uvicorn", "main:app", "--host", "0.0.0.0","--port", "80"]
