#!/bin/bash
gcloud config set project tim-pmid-dev
gcloud config set compute/region southamerica-east1
gcloud container clusters get-credentials pmid-dev --region=southamerica-east1