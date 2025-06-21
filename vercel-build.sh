#!/bin/bash

# Exit on error
set -o errexit

# Install dependencies (already handled by Vercel's build process, but good to have)
pip install -r requirements.txt

# Collect static files
python manage.py collectstatic --noinput

# Run database migrations
python manage.py migrate 