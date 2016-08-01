curl --include --request POST http://localhost:3000/recipes \
  --header "Content-Type: application/json" \
  --data '{
    "recipe": {
      "title": "Bagel",
      "level": 1,
      "time": 5,
      "ingredients": ["bagel","cream cheese", "knife"],
      "directions": ["cut bagel in half", "spread cream cheese"]
    }
}'

curl --include --request POST http://localhost:3000/recipes \
  --header "Content-Type: application/json" \
  --data '{
    "recipe": {
      "title": "Persian Omellete",
      "level": 1,
      "time": 5,
      "ingredients": ["3 eggs","10 cherry tomatoes", "curry powder"],
      "directions": ["Fry sliced tomatoes", "Scramble eggs with curry powder", "Pour eggs over tomatoes"]
    }
}'
