%w{rubygems sinatra haml sass maruku}.each {|libs| require libs}
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
  $main_bg = "#ffffff"
  $wrapper_bg = "#000000"
  #layout
  $default_width = $flex_width
  $fix_width = 590
  $flex_width = "100%"
  $gutter_h = 15
  $gutter_v = 15
  $inner_width = $fix_width - ($gutter_h * 2)
  #images
  $logo_height = 60
  $logo_width = 160
  $img_def_dim = "200x200"
end
####################################################################################################
# Application routes
get '/promo-aside' do
  haml :index, :layout => :'layouts/application'
end

get '/promo-footer' do
  haml :promo_footer, :layout => :'layouts/application'
end


