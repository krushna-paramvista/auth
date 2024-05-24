# db/seeds.rb

# Create an admin user
admin_email = 'adminnew@example.com'
admin_password = 'password' # Change this to a secure password

admin = User.find_or_initialize_by(email: admin_email)
admin.assign_attributes(
  password: admin_password,
  password_confirmation: admin_password,
  name: 'Admin',
  last_name: 'User',
  role: :admin
)

if admin.save
  puts "Admin user created: #{admin.email} with role #{admin.role}"
else
  puts "Failed to create admin user: #{admin.errors.full_messages.join(', ')}"
end
