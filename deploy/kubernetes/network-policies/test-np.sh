#!/bin/bash

# Replace this URL with your endpoint
URL="http://a4a0fec71330e415a85c91d4c6fc482b-703771791.eu-west-2.elb.amazonaws.com/catalog"

while true; do
  # Make the request and capture the HTTP status code
  HTTP_STATUS=$(curl -o /dev/null -s -w "%{http_code}\n" "$URL")

  # Print the HTTP status code
  echo "HTTP Status Code: $HTTP_STATUS"

  # Wait for 1 second before the next request
  sleep 1
done

