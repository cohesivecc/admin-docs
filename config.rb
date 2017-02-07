
activate :directory_indexes

###
# Compass
###

compass_config do |config|
  config.add_import_path "bower_components/foundation-sites/scss/"
  config.output_style = :compact

  # Set this to the root of your project when deployed:
  # config.http_path = "/"
  # config.css_dir = "stylesheets"
  # config.sass_dir = "stylesheets"
  # config.images_dir = "images"
  # config.javascripts_dir = "javascripts"
end

###
# Markdown
###
set :markdown, tables: true, autolink: true, gh_blockcode: true, fenced_code_blocks: true, with_toc_data: false
set :markdown_engine, :redcarpet

###
# Github Pages Deployment
###
activate :deploy do |deploy|
  deploy.deploy_method = :git
  deploy.build_before = true
end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

page '/documentation/*', layout: 'documentation'

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# General configuration

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end



###
# Helpers
###

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end



###
# Sprockets for assets
###
activate :sprockets
after_configuration do
  @bower_config = JSON.parse(IO.read("#{root}/.bowerrc"))
  sprockets.append_path File.join "#{root}", @bower_config["directory"]
end

# Use the correct vendor prefixes for foundation
# activate :autoprefixer do |config|
#   config.browsers = ['last 2 versions', 'ie >= 9', 'and_chr >= 2.3']
# end
# set :css_dir, 'stylesheets'
#
# set :js_dir, 'javascripts'
#
# set :images_dir, 'images'
#
# ignore "bower_components/*"
#
# ignore "javascripts/app.js"
#
# ignore "javascripts/script.js"

# Build-specific configuration
configure :build do
  # Minify CSS on build
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript
end
