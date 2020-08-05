# README

## File Upload using Active Storage
https://pragmaticstudio.com/tutorials/using-active-storage-in-rails

rails active_storage:install

rails db:migrate
Model ->
   -> has_one_attached :featured_image

View
  -> 
    <%= form.label :featured_image %>
    <%= form.file_field :featured_image %>

Display Image
<%= image_tag @post.featured_image %>

# Gems
- Friendly_ID Gem
- Ransack Gem (search, sort etc)
- Kaminari Gem (paginate)