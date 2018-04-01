# Activate multi-language

# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

# activate :directory_indexes

activate :relative_assets
set :relative_links, true

activate :blog do |blog|
  blog.name = "blog"
  blog.prefix = "blog"
  blog.paginate = true
  blog.permalink = "{title}"
  blog.layout = "layout-post"
end

activate :directory_indexes

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

# Disable Haml warnings - HAML/Middleman issue
Haml::TempleEngine.disable_option_validator!
