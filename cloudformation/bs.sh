#!/bin/bash

URL="http://incomingtrafficloadbalancer-55424034.us-east-1.elb.amazonaws.com/"
INTERVAL=1 # time in seconds between pings

while true; do
  echo "Pinging $URL at $(date)"
  curl -s -o /dev/null -w "HTTP Status: %{http_code}\n" "$URL"
  curl -s -o /dev/null -w "HTTP Status: %{http_code}\n" "$URL"
  curl -s -o /dev/null -w "HTTP Status: %{http_code}\n" "$URL"
  curl -s -o /dev/null -w "HTTP Status: %{http_code}\n" "$URL"
  curl -s -o /dev/null -w "HTTP Status: %{http_code}\n" "$URL"
  curl -s -o /dev/null -w "HTTP Status: %{http_code}\n" "$URL"
  curl -s -o /dev/null -w "HTTP Status: %{http_code}\n" "$URL"
  curl -s -o /dev/null -w "HTTP Status: %{http_code}\n" "$URL"
  curl -s -o /dev/null -w "HTTP Status: %{http_code}\n" "$URL"
  curl -s -o /dev/null -w "HTTP Status: %{http_code}\n" "$URL"
  curl -s -o /dev/null -w "HTTP Status: %{http_code}\n" "$URL"
  curl -s -o /dev/null -w "HTTP Status: %{http_code}\n" "$URL"
  curl -s -o /dev/null -w "HTTP Status: %{http_code}\n" "$URL"
  curl -s -o /dev/null -w "HTTP Status: %{http_code}\n" "$URL"
  curl -s -o /dev/null -w "HTTP Status: %{http_code}\n" "$URL"
  curl -s -o /dev/null -w "HTTP Status: %{http_code}\n" "$URL"
  curl -s -o /dev/null -w "HTTP Status: %{http_code}\n" "$URL"
  curl -s -o /dev/null -w "HTTP Status: %{http_code}\n" "$URL"
  curl -s -o /dev/null -w "HTTP Status: %{http_code}\n" "$URL"
  curl -s -o /dev/null -w "HTTP Status: %{http_code}\n" "$URL"
  curl -s -o /dev/null -w "HTTP Status: %{http_code}\n" "$URL"
done
