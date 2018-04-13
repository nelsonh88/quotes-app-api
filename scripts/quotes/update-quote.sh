API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/quotes/${ID}"
curl "${API}${URL_PATH}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}"\
  --data '{
    "quote": {
      "title": "'"${TITLE}"'",
      "text": "'"${TEXT}"'",
      "author": "'"${AUTHOR}"'"
    }
  }'

echo
