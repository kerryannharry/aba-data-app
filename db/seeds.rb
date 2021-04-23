# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Client.create(name:"Jonny Smith", age:9, parent_name:"Kim Smith", parent_address:"9875 turtle st. Southlake TX 78542", parent_phone_number:2544522656,parent_email:"jonnysmom@gmail.com", insurance:true, password:"TEST")
Client.create(name: "Thomas Tuttle", age:3, parent_name:"Sarah Tuttle", parent_address:"1234 w hard stone rd. Southlake TX 76489", parent_phone_number:2844522656,parent_email:"thomassmom@gmail.com", insurance:true, password:"TEST")
Client.create(name:"Kelly Brown", age:11, parent_name:"Amanda Brown", parent_address:"4568 w Sea Tree dr. Westlake TX 76548", parent_phone_number:2544865656,parent_email:"kellysmom@gmail.com", insurance:false, password:"TEST")
Client.create(name:"Layla Harris", age:2, parent_name:"Sally Harris", parent_address:"7524 Jimmy Jone st. Northlake TX 45217", parent_phone_number:2544522756,parent_email:"britsmom@gmail.com", insurance:true, password:"TEST")
Client.create(name:"Joy Cummings", age:4, parent_name:"Mary Cummings", parent_address:"2547 Stillstone rd. Westlake TX 25478", parent_phone_number:8544522656,parent_email:"jamiesmom@gmail.com", insurance:false, password:"TEST")
Employee.create(name:"Mariah Land", email:"mariah@pineconetherapies.com", role:"BCBA", bacbid:"BCBA-28-7852", password: "TEST")
Employee.create(name:"KerryAnn Harry", email:"kerryann.harry@pineconetherapies.com", role:"RBT", bacbid:"RBT-28-9652", password:"TEST")
Employee.create(name:"Casey Hill", email:"casey.hill@pineconetherapies.com", role:"RBT", bacbid:"RBT-66-7782", password: "TEST")
Employee.create(name:"Nancy Dallas", email:"nancy.dallas@pineconetherapies.com", role:"RBT", bacbid:"RBT-99-7782", password: "TEST")
Employee.create(name:"Brandon Parker", email:"brandon.parker@pineconetherapies.com", role:"BCBA", bacbid:"BCBA-44-8952", password: "TEST")