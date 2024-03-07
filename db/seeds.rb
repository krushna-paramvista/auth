# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# <!DOCTYPE html>
# <html>
#   <head>
#     <title>Auth</title>
#     <meta name="viewport" content="width=device-width,initial-scale=1">
#     <%= csrf_meta_tags %>
#     <%= csp_meta_tag %>

#     <%= stylesheet_link_tag "application", "data-turbo-track": "reload" %>
#     <%= javascript_importmap_tags %>
#   </head>

#   <body>
#     <%= yield %>
#        <p class="notice"><%= notice %></p>
#        <p class="alert"><%= alert %></p>

#        <% if user_signed_in? %>
#           <%= current_user.email %>
#           <%= link_to 'Log out', destroy_user_session_path, data: { turbo_method: :delete }  %>
#           <%= link_to 'Email Settings', edit_user_registration_path %>
          
#         <% else %>
#            <%= link_to 'Log in', new_user_session_path %>
#            <%= link_to 'sign up', new_user_registration_path %>
#        <% end %>


#   </body>
# </html>




#-------------------------------------------------------------- this is a bootstrap adding code ---------------------------------------------------------------------



# <!DOCTYPE html>
# <html>
# <head>
#   <title>Your Application</title>
#   <%= csrf_meta_tags %>
#   <%= csp_meta_tag %>

#   <!-- Include Bootstrap CSS -->
#   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

#   <!-- Include custom CSS -->
#   <%= stylesheet_link_tag 'application', media: 'all', 'data-turbolinks-track': 'reload' %>
# </head>
# <body>
#   <%= yield %>
#   <div class="container">
#     <p class="notice"><%= notice %></p>
#     <p class="alert"><%= alert %></p>

#     <% if user_signed_in? %>
#       <p>Welcome, <%= current_user.email %></p>
#       <%= link_to 'Log out', destroy_user_session_path, class: 'btn btn-danger', data: { turbo_method: :delete }  %>
#       <%= link_to 'Email Settings', edit_user_registration_path, class: 'btn btn-primary' %>
#     <% else %>
#       <%= link_to 'Log in', new_user_session_path, class: 'btn btn-primary' %>
#       <%= link_to 'Sign up', new_user_registration_path, class: 'btn btn-success' %>
#     <% end %>
#   </div>

#   <!-- Include Bootstrap JS (optional) -->
#   <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
#   <%= javascript_tag 'application', 'data-turbolinks-track': 'reload' %>
# </body>
# </html>






# removed code for dropdownlist

# <%= form.label :product_category, style: "display: block" %>
#      <%= form.text_field :category %>


# for id ___________________________________ to show id 

# <div class="field">
#     <%= form.label :product_category_id %>
#     <%= form.select :product_category_id, options_for_select(ProductCategory.all.map { |pc| [pc.name, pc.id] }) %>
    
#      </div>





#  this is the _product.html.erb  file code

# <!DOCTYPE html>
# <html>
# <head>
#   <title>Stylish Table</title>
#   <link rel="stylesheet" type="text/css" href="path/to/table_styles.css">
# </head>
# <body>
#   <table id="my-styled-table">
#     <thead>
#       <tr>
#         <th>Field</th>
#         <th>Value</th>
#       </tr>
#     </thead>
#     <tbody>
#       <tr>
#         <td><strong>Product category:</strong></td>
#         <td><%= product.product_category_id %></td>
#       </tr>
#       <tr>
#       <td><strong>Product Category Name:</strong></td>
#       <td><%= product.product_category&.name || "N/A" %></td>
#     </tr>
    
#         <td><strong>Name:</strong></td>
#         <td><%= product.name %></td>
#       </tr>
#       <tr>
#         <td><strong>Description:</strong></td>
#         <td><%= product.description %></td>
#       </tr>
#       <tr>
#         <td><strong>Price:</strong></td>
#         <td><%= product.price %></td>
#       </tr>
#     </tbody>
#   </table>
# </body>
# </html>


#  _product_category file

# <!DOCTYPE html>
# <html>
# <head>
#   <title>Stylish Table</title>
#   <link rel="stylesheet" type="text/css" href="path/to/pcategory_p.css">

# </head>
#  <body>
#  <table id="my-styled-table">
#  <div id="<%= dom_id product_category %>">
#     <tbody>
#     <tr>
#       <td><strong>Name:</strong></td>
#       <td><%= product_category.name %></td>
#     </tr>

# </div>
# </tbody>
# </table>
# </body>
# </html>
