# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


  u = User.create([ email: 'admin@jolmarine.com' ,  password: '123456' , password_confirmation:'123456', is_admin: true])
  puts "create an admin user"


  products =[{title:"Ultra-Thin Touch Mouse T630",
  	        description: "Designed for Ultrabooks
                          Ultra-portable
                          Windows 8 touch gesture support
                          Bluetooth wireless with Logitech easy-switch technology
                          Rechargeable",
  	        image_path: "#{Rails.root}/app/assets/images/logitech_mouse.jpg"},

  	        {title:"A Mid-Back Mesh Chair",
  	        description: "Ergonomic office chair with contoured mesh back for breathability
  	              Pneumatic seat-height adjustment; padded seat for comfort.",
  	        image_path: "#{Rails.root}/app/assets/images/chair.jpg"}
  ]


    p1 = Product.create([title:products[0][:title],description:products[0][:description],quantity:20,price:30,image:open(products[0][:image_path])])
    p2 = Product.create([title:products[1][:title],description:products[1][:description],quantity:20,price:30,image:open(products[1][:image_path])])
    puts "create products"
