curl --include --request POST http://localhost:3000/recipes \
  --header "Content-Type: application/json" \
  --data '{
    "recipe": {
      "title": "Bagel",
      "image":"http://www.dunkindonuts.com/content/dunkindonuts/en/menu/food/bakery/bagels/bagels/_jcr_content/block/image.img.png/1432899132100.png",
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
      "image":"http://www.thetofutravels.com/wp-content/uploads/2013/10/eggs-in-pan-2.jpg",
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
      "image":"http://threesbarandgrill.com/wp-content/uploads/2014/06/imagejpeg_0-708x708.jpg",
      "level": 2,
      "time": 10,
      "ingredients": ["1lb Drumsticks","2 in Ginger", "3 Cloves Garlic","1/3 cup sugar","1/3 cup soy sauce","1/3 cup water"],
      "directions": ["Mix water soy sauce and sugar in crock pot", "Place drumsticks in the concoction", "Chop ginger and garlic and throw in pot","Slow cook on low for 6-8 hours"]
    }
}'

curl --include --request POST http://localhost:3000/recipes \
  --header "Content-Type: application/json" \
  --data '{
    "recipe": {
      "title": "Steak",
      "image":"http://www.omahasteaks.com/gifs/os/dd_01_filet.jpg",
      "level": 2,
      "time": 15,
      "ingredients": ["1lb Drumsticks","2 in Ginger", "3 Cloves Garlic","1/3 cup sugar","1/3 cup soy sauce","1/3 cup water"],
      "directions": ["Mix water soy sauce and sugar in crock pot", "Place drumsticks in the concoction", "Chop ginger and garlic and throw in pot","Slow cook on low for 6-8 hours"]
    }
}'

curl --include --request POST http://localhost:3000/recipes \
  --header "Content-Type: application/json" \
  --data '{
    "recipe": {
      "title": "Ramen",
      "image":"http://www.chowstatic.com/blog-media/2015/09/phpThumb_generated_thumbnail-17.jpeg",
      "level": 1,
      "time": 10,
      "ingredients": ["Noodles", "Soup","Toppings"],
      "directions": ["Boil Noodles", "Dump noodles into soup", "Top with toppings","Enjoy!"]
    }
}'

curl --include --request PATCH http://localhost:3000/recipes/3 \
  --header "Content-Type: application/json" \
  --data '{
    "recipe": {
      "image": "http://threesbarandgrill.com/wp-content/uploads/2014/06/imagejpeg_0-708x708.jpg"
    }
}'

curl --include --request DELETE http://localhost:3000/recipes/1
