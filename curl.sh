Shireen Token:

curl --include --request POST http://localhost:3000/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "jason",
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
  --header "Authorization: Token token=BAhJIiVhMGM0MTBiNjIwMjU1NmJlODEwNjc3MjMzYTA3NmE1NwY6BkVG--4e54c295e1ff19faad3c43a69dbad58817dac90b" \
  --data '{
    "profile": {
      "given_name": "Jason Frishman",
      "level": 1,
      "user_id": 2
    }
}'

curl --include --request POST http://localhost:3000/profiles \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiVhYzViNDBiY2EzZjljYzk4MGZjM2EzOTI4MTFmY2RhZQY6BkVG--dead3c009c202c1aedc4a9cad40b685e6ecdbf54" \
  --data '{
    "profile": {
      "given_name": "Shireen",
      "level": 1,
      "user_id": 1
    }
}'

curl --include --request POST http://localhost:3000/favorites \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiVhYzViNDBiY2EzZjljYzk4MGZjM2EzOTI4MTFmY2RhZQY6BkVG--dead3c009c202c1aedc4a9cad40b685e6ecdbf54" \
  --data '{
    "favorite": {
      "profile_id": 1,
      "recipe_id": 2
    }
}'

curl --include --request POST http://localhost:3000/schedules \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiVhYzViNDBiY2EzZjljYzk4MGZjM2EzOTI4MTFmY2RhZQY6BkVG--dead3c009c202c1aedc4a9cad40b685e6ecdbf54" \
  --data '{
    "schedule": {
      "profile_id": 1,
      "recipe_id": 3,
      "eat_on": "2016-08-02",
      "complete": false,
      "favorite": false
    }
}'

curl --include --request POST http://localhost:3000/tags \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiVhYzViNDBiY2EzZjljYzk4MGZjM2EzOTI4MTFmY2RhZQY6BkVG--dead3c009c202c1aedc4a9cad40b685e6ecdbf54" \
  --data '{
    "tag": {
      "recipe_id": 1,
      "tag": "American"
    }
}'



curl --include --request DELETE http://localhost:3000/profiles/4
