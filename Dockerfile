FROM python:3.9-slim AS build

RUN pip install poetry

COPY loss_landscape_anim loss_landscape_anim
COPY sample_images sample_images
COPY pyproject.toml .
COPY poetry.lock .
COPY README.md .
COPY requirements.txt .
COPY run.py .
COPY ".env" .

RUN poetry config virtualenvs.create false
RUN poetry install --no-interaction --no-ansi 

ARG GCLOUD_BUCKET
ENV GCLOUD_BUCKET=${GCLOUD_BUCKET}

ARG GOOGLE_APPLICATION_CREDENTIALS
ENV GOOGLE_APPLICATION_CREDENTIALS=${GOOGLE_APPLICATION_CREDENTIALS}
COPY ${GOOGLE_APPLICATION_CREDENTIALS} .

ENTRYPOINT ["poetry", "run", "python", "run.py"]