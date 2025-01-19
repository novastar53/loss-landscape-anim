#!/bin/bash

if [[ $1 == "mac" ]]; then
    docker build . --build-arg GOOGLE_APPLICATION_CREDENTIALS=$GOOGLE_APPLICATION_CREDENTIALS  --build-arg GCLOUD_BUCKET=$GCLOUD_BUCKET  -t gcr.io/$GOOGLE_CLOUD_PROJECT/loss-landscape-anim:latest
else
    docker build  --build-arg GOOGLE_APPLICATION_CREDENTIALS=$GOOGLE_APPLICATION_CREDENTIALS --build-arg GCLOUD_BUCKET=$GCLOUD_BUCKET --platform linux/amd64 . -t gcr.io/$GOOGLE_CLOUD_PROJECT/loss-landscape-anim:latest
fi