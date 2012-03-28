%w{rubygems sinatra haml sass kramdown}.each {|libs| require libs}
# Helpers
require './lib/render_partial'
require './lib/html_helper'
# Set Sinatra variables
set :app_file, __FILE__
set :root, File.dirname(__FILE__)
set :views, 'views'
set :public, 'public'
set :haml, {:format => :html5} # default Haml format is :xhtml
set :sass, :style => :compressed
####################################################################################################
#set mailer variable
configure do
  #meta
  $lang = "en"
  #font
  $font_family = "Arial, Helvetica, sans-serif"
  $font_size = "13px"
  $font_weight = "bold"
  #colors
  $brand_col = "#1d6d0a"
  $copy_col = "#000000"
  $copy_inv_col = "#ffffff" 
  $link_col = "blue"
  $link_inv_col = "#ffffff"
  $link_hover = $brand_col
  $link_visited = "purple"
  $link_active = $brand_col
  $main_bg = "#ffffff"
  $wrapper_bg = "#000000"
  $brand_cta_color = "#ffbb00"
  $hr_color = "#cccccc"
  #layout
  $fix_width = 590
  $flex_width = "100%"
  $default_width = $flex_width
  $gutter = 20
  $gutter_h = $gutter
  $gutter_v = $gutter
  $inner_width = $fix_width - ($gutter * 2)
  #columns
  $col_1 = $fix_width
  $col_2 = ($inner_width - $gutter_h) / 2
  $col_3 = ($inner_width - ($gutter_h * 2)) / 3
  #images
  $logo_height = 60
  $logo_width = 160
  $img_dev_url = "http://placehold.it/"
  $img_def_dim = "200x200"
  $img_rythm = 110
end
####################################################################################################
# Application routes
get '/' do
  redirect '/proto'
end

get '/proto' do
  haml :test_email, :layout => :'layouts/application'
end

get '/promo-aside' do
  haml :index, :layout => :'layouts/application'
end

get '/promo-footer' do
  haml :promo_footer, :layout => :'layouts/application'
end

get '/proto-mailer-001' do
  haml :proto_mailer_001, :layout => :'layouts/application'
end


