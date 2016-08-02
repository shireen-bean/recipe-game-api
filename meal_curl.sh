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

curl --include --request POST http://localhost:3000/recipes \
  --header "Content-Type: application/json" \
  --data '{
    "recipe": {
      "title": "Shoyu Chicken",
      "level": 2,
      "time": 10,
      "ingredients": ["1lb Drumsticks","2 in Ginger", "3 Cloves Garlic","1/3 cup sugar","1/3 cup soy sauce","1/3 cup water"],
      "directions": ["Mix water soy sauce and sugar in crock pot", "Place drumsticks in the concoction", "Chop ginger and garlic and throw in pot","Slow cook on low for 6-8 hours"]
    }
}'

curl --include --request PATCH http://localhost:3000/recipes/3 \
  --header "Content-Type: application/json" \
  --data '{
    "recipe": {
      "image": "http://threesbarandgrill.com/wp-content/uploads/2014/06/imagejpeg_0-708x708.jpg"
    }
}'
