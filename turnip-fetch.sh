#!/bin/bash

# This script fetches submissions

# Define the URL or endpoint to fetch submissions from
SUBMISSION_URL="http://example.com/submissions"

# Fetch submissions using curl and save to submissions.json
curl -o submissions.json $SUBMISSION_URL

# Print a message indicating completion
echo "Submissions fetched successfully!"