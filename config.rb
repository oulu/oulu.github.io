###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

activate :syntax, line_numbers: true
set :markdown_engine, :redcarpet
set :markdown, :fenced_code_blocks => true, :smartypants => true

# Automatic image dimensions on image_tag helper
activate :automatic_image_sizes

Time.zone = "Tokyo"

activate :blog do |blog|
  blog.prefix = "articles"
  # blog.permalink = ":year/:month/:day/:title.html"
  # blog.sources = ":year-:month-:day-:title.html"
  # blog.taglink = "tags/:tag.html"
  blog.layout = "layout"
  blog.summary_separator = /(READMORE)/
  blog.summary_length = 250
  blog.year_link = ":year.html"
  blog.month_link = ":year/:month.html"
  blog.day_link = ":year/:month/:day.html"
  blog.default_extension = ".markdown"
  blog.tag_template = "tag.html"
  blog.calendar_template = "calendar.html"
  blog.permalink = "{category}/{title}.html"

  blog.paginate = true
  blog.per_page = 10
  blog.page_link = "page/:num"

  blog.custom_collections = {
    category: {
      link: '{category}.html',
      template: 'category.html'
    }
  }

end

Slim::Engine.set_default_options :pretty => true

Slim::Engine.set_default_options :shortcut => {
  '#' => {:tag => 'div', :attr => 'id'},
  '.' => {:tag => 'div', :attr => 'class'},
  '&' => {:tag => 'input', :attr => 'type'}
}

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

# Build-specific configuration
configure :build do
  activate :minify_html, :remove_quotes => false, :remove_intertag_spaces => true
  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end

helpers do
  def index?
    if current_page.path == 'index.html'
      return true
    end
  end

  def articles?
    current_article.nil?
  end

  def category?
    #["functions", "mixins", "helpers", "blog"].each do |category|
    #    current_page.url.include?("#{category}.html")
    #  end
    if current_page.url.include?('mixins.html') || current_page.url.include?('functions.html') || current_page.url.include?('helpers.html') || current_page.url.include?('blog.html')
      return true
    else
      return false
    end
  end

  def in_mixins?
    if current_page.url.include?('mixins')
      return true
    else
      return false
    end
  end

  def in_functions?
    if current_page.url.include?('functions')
      return true
    else
      return false
    end
  end

  def in_helpers?
    if current_page.url.include?('helpers')
      return true
    else
      return false
    end
  end

  def in_blog?
    if current_page.url.include?('blog')
      return true
    else
      return false
    end
  end

  def page?
    current_page.url.include?('pages')
  end

  def local_nav?
    if index? || category? || page?
      return false
    else
      return true
    end
  end

  def nav_page?
    current_page.url.include?('archives.html') || current_page.url.include?('tags.html')
  end

  def lang_class(text)
    case (text).ascii_only?
    when true
      return 'is-en'
    end
    return 'is-ja'
  end

  def text_size(text)
    if (text).bytesize <= 6
      return 'is-sm'
    elsif (text).bytesize >= 7 && (text).bytesize <= 12
      return 'is-md'
    elsif (text).bytesize >= 13 && (text).bytesize <= 16
      return 'is-lg'
    else
      return 'is-xl'
    end
  end

  def is_current_page?(url)
    case current_page.url.include?(url)
    when true
      return 'is-current'
    end
  end

  def is_current_group?(url)
    case current_page.url.include?(url)
    when true
      return 'is-current'
    end
  end

  def is_current_archives?
    if current_page.url.include?('articles')
      if not current_page.url.include?('tags')
        return 'is-current'
      end
    end
  end

  def glitch
    case data.site.glitch
    when true
      return 'is-glitch'
    end
  end

end
