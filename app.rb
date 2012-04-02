%w{rubygems sinatra haml sass kramdown}.each {|libs| require libs}

# Set Sinatra variables
set :app_file, __FILE__
set :root, File.dirname(__FILE__)
set :views, 'views'
set :public_folder, 'public'
set :haml, {:format => :html5} # default Haml format is :xhtml
set :sass, :style => :compressed
####################################################################################################
#set mailer variable
configure do
  #meta
  $lang = "en"
  #font
  $font_family = "Arial, Helvetica, sans-serif"
  $font_size = "12px"
  $font_weight = "normal"
  $line_height ="1.4"
  #colors
  $brand_col = "#1d6d0a"
  $brand_highlight_primary = "#e73f40"
  $brand_highlight_secondary = "#ffffff"
  $brand_cta_color = "#ffbb00"
  $brand_link_highlight = $brand_highlight_primary
  $newsletter_bg_color = "#f0f0f0"
  $copy_col = "#000000"
  $copy_inv_col = "#ffffff" 
  $cta_link_col = "#ffffff"
  $link_col = "blue"
  $link_inv_col = "#ffffff"
  $link_hover = $brand_col
  $link_visited = "purple"
  $link_active = $brand_col
  $main_bg = "#ffffff"
  $wrapper_bg = "#000000"
  $hr_color = "#cccccc"
  $border_primary_color = "#D3D3D3"
  $border_primary = "1px solid #{$border_primary_color}"
  #layout
  $fix_width = 590
  $flex_width = "100%"
  $default_width = $flex_width
  $gutter = 25
  $gutter_h = $gutter
  $gutter_v = $gutter
  $inner_width = $fix_width - ($gutter * 2)
  #columns
  $col_1 = $fix_width
  $col_2 = ($inner_width - $gutter_h) / 2
  $col_3 = ($inner_width - ($gutter_h * 2)) / 3
  #images
  $logo_height = 75
  $logo_width = 590
  $img_dev_url = "http://www.partypoker.com/content/dam/mailers/prototype/"
  $img_def_dim = "200x200"
  $img_rythm = 110
  #links
  $test_link = "http://change.me"
end

# Helpers
require './lib/render_partial'
require './lib/html_helper'

####################################################################################################
# Application routes

get '/' do
  haml :proto_mailer_001, :layout => :'layouts/pg-tpl'
end


