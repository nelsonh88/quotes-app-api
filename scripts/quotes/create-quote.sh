API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/quotes"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "quote": {
      "quote": "'"${QUOTE}"'",
      "author": "'"${AUTHOR}"'"
    }
  }'

echo
