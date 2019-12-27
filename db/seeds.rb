# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

#product = Product.new(name: "Name 1", description: "Description 1", price: 50.99)
#product.save
#
#product = Product.create(name: "Name 1", description: "Description 1", price: 50.99)

User.create!(
    [
        {first_name: 'David', last_name: 'Jacobsen', email: 'dgrjacobsen@gmail.com', password: 'dglavind12'},
        {first_name: 'John', last_name: 'Doe', email: 'JOHN@example.com', password: 'password'}
    ]
)

david = User.first
john = User.last

products = Product.create([
  {name: 'Name 1',
   price: '99.99',
   description: 'Lorem ipsum dolor sit amet,consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
   quantity: 5,
   user_id: david.id
  },
  {name: 'Name 2',
   price: '57.99',
   description: 'Lorem ipsum dolor sit amet,consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
   quantity: 2,
   user_id: david.id
  },
  {name: 'Name 3',
   price: '38.99',
   description: 'Lorem ipsum dolor sit amet,consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
   quantity: 3,
   user_id: john.id
  }
])

# $ rails db:reset
# $ rails db:seed
# $ rails db:migrate