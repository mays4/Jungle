# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.

#Home Page :
In the home page vistor can see all products !["mainPage.png"](https://github.com/mays4/Jungle/blob/master/app/docs/mainPage.png?raw=true)
- When product is sold out it shows !["sold_Out.png"](https://github.com/mays4/Jungle/blob/master/app/docs/sold_Out.png?raw=true)
- When go to admin/dashboard shows quantity  of the total product and catogory !["dashboard.png"](https://github.com/mays4/Jungle/blob/master/app/docs/dashboard.png?raw=true)
- to access the admin/product name and password need to enter !["Auth.png"](https://github.com/mays4/Jungle/blob/master/app/docs/Auth.png?raw=true)
- when acess all products show !["Admin_all.png"](https://github.com/mays4/Jungle/blob/master/app/docs/Admin_all.png?raw=true)
- Admin can delete products and  creat new product !["new_Product.png"](https://github.com/mays4/Jungle/blob/master/app/docs/new_Product.png?raw=true) 
- new product !["newproduct.png"] (https://github.com/mays4/Jungle/blob/master/app/docs/newproduct.png?raw=true)
- In the admin catogory all the Category !["newCategory.png"](https://github.com/mays4/Jungle/blob/master/app/docs/newCategory.png?raw=true) show and admin can add Category!["new_category.png"](https://github.com/mays4/Jungle/blob/master/app/docs/new_category.png?raw=true)  
- In admin/sales all sales show !["sales.png"](https://github.com/mays4/Jungle/blob/master/app/docs/sales.png?raw=true)
- when customer add to the cart all the items show !["My_cart.png"] (https://github.com/mays4/Jungle/blob/master/app/docs/My_cart.png?raw=true)and can process and buy !["cart.png"](https://github.com/mays4/Jungle/blob/master/app/docs/cart.png?raw=true)
- when delete itmes in the order message shows and link to home page !["empty_cart.png"](https://github.com/mays4/Jungle/blob/master/app/docs/empty_cart.png?raw=true)
- when order made details of the order show !["order.png"](https://github.com/mays4/Jungle/blob/master/app/docs/order.png?raw=true)
-  Customer can choose to make an order without account or singup !["singup.png"](https://github.com/mays4/Jungle/blob/master/app/docs/singup.png?raw=true) then  login !["login.png"](https://github.com/mays4/Jungle/blob/master/app/docs/login.png?raw=true)

- customer  when login !["user name when login.png"](https://github.com/mays4/Jungle/blob/master/app/docs/user%20name%20when%20login.png?raw=true)


## Additional Steps for Apple M1 Machines

1. Make sure that you are runnning Ruby 2.6.6 (`ruby -v`)
1. Install ImageMagick `brew install imagemagick imagemagick@6 --build-from-source`
2. Remove Gemfile.lock
3. Replace Gemfile with version provided [here](https://gist.githubusercontent.com/FrancisBourgouin/831795ae12c4704687a0c2496d91a727/raw/ce8e2104f725f43e56650d404169c7b11c33a5c5/Gemfile)

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
