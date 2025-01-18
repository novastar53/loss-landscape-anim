FROM python:3.9-slim AS build

RUN pip install poetry

COPY loss_landscape_anim loss_landscape_anim
COPY sample_images sample_images
COPY pyproject.toml .
COPY poetry.lock .
COPY README.md .
COPY requirements.txt .
COPY run.py .

RUN mkdir output

RUN poetry config virtualenvs.create false
RUN poetry install --no-interaction --no-ansi 

ENTRYPOINT ["poetry", "run", "python", "run.py"]