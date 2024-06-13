#!/bin/bash

# Install dependencies
npm install google-auth-library google-auth-oauthlib google-api-library

# Set up Google Apps Script environment
export GOOGLE_APPLICATION_CREDENTIALS=$(pwd)/config.json
gcloud auth activate-service-account --key-file=config.json

# Run the script
node -e "require('./Code').registerEventsToCalendar()"
