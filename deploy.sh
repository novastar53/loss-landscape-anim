set -e # fail fast


echo $GOOGLE_CLOUD_PROJECT

docker push gcr.io/$GOOGLE_CLOUD_PROJECT/loss-landscape-anim:latest