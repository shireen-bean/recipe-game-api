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
  --header "Authorization: Token token=BAhJIiU3M2NkZWQ3Y2M3ZjYwOWM3Y2UwNzE4Y2QwMWU3ZGQ3OQY6BkVG--d66edcdde2d97136ad74156149a03759d975e59a" \
  --data '{
    "profile": {
      "given_name": "Shireen Kheradpey",
      "level": 2,
      "user_id": 1
    }
}'

curl --include --request POST http://localhost:3000/profiles \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiVmMmFiNGM4NGJhOTVhOGVhYzU5OWM4OWVkYTc1ZGI0OQY6BkVG--f3ae8d3ecc943f311f80cd69c2955759c45b4867" \
  --data '{
    "profile": {
      "given_name": "Jason",
      "level": 1,
      "user_id": 2
    }
}'

curl --include --request POST http://localhost:3000/profiles \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiVhMmRlMDY1NjYzYmJmOGM0YzA0MjdhNjY5YTdiMjZjZgY6BkVG--2ee671564a1655fbf1060ccb0659bd03a4c3b4e5" \
  --data '{
    "profile": {
      "given_name": "Marvin",
      "level": 1,
      "user_id": 3
    }
}'

curl --include --request POST http://localhost:3000/schedules \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiU0MjVkODRiZTQwYjcwODFlN2NlZGRlNTQ1OTNiMGU2NgY6BkVG--66151cfa55afc2b8284caff1bcbfee4bc4d47432" \
  --data '{
    "schedule": {
      "profile_id": 1,
      "recipe_id": 3,
      "eat_on": "2016-08-02",
      "complete": false,
      "favorite": true
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



curl --include --request DELETE http://localhost:3000/schedules/3
