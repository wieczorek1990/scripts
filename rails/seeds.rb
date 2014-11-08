# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
ROLES = ['admin']
ADMIN_NAME = 'admin'
ADMIN_EMAIL = 'a@a.aa'
ADMIN_PASSWORD = 'password'
ROLES.each do |role|
  Role.find_or_create_by_name(role)
end
user = User.find_or_create_by_email :name => ADMIN_NAME.dup, :email => ADMIN_EMAIL.dup, :password => ADMIN_PASSWORD.dup, :password_confirmation => ADMIN_PASSWORD.dup
user.confirm!
user.add_role :admin
