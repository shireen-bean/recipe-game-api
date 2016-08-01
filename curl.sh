Shireen Token:

curl --include --request POST http://localhost:3000/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "shireen",
      "password": "p",
      "password_confirmation": "p"
    }
}'

curl --include --request POST http://localhost:3000/sign-in \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "shireen",
      "password": "p"
    }
}'

curl --include --request POST http://localhost:3000/profiles \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiUwYzMzMTk0YmFjZDM3ZWUyNjdmNmE0Y2FlYmFkNTBjMAY6BkVG--5e0154827a6b4d9ef55c5dd95c8cd7e6081ef6bc" \
  --data '{
    "profile": {
      "given_name": "Shireen",
      "level": 1,
      "user_id": 1
    }
}'

curl --include --request DELETE http://localhost:3000/profiles/4
