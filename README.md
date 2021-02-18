# Clouzon Task

This Project was built as a simple backend task for Clouzon
## Task Requirements
    1. User should be able to register & login
    2. User can get list of products
    3. User can add products to the cart
    4. User can get his cart summary

## Installation
#### Prerequisites
- Docker
- Docker Compose
#### Running The App
Open a terminal and run the following commands
```
git clone git@github.com:abdelrahmanMA/clouzon.git
cd clouzon
docker-compose build app
docker-compose up -d
docker-compose exec app composer install
```

## API documentation
All API End points and documentation can be found at: [This link](https://documenter.getpostman.com/view/11251383/TWDWJwsH).
The following is just a simple list of the api end points:

>POST /api/auth/register

>POST /api/auth/login

>GET /api/auth/logout

>GET /api/auth/refresh

>GET /api/auth/user

>GET /api/products/

>GET /api/products/:id

>POST /api/cart/

>GET /api/cart/:cart_id

>POST /api/cart/:cart_id

>DEL /api/cart/:cart_id
