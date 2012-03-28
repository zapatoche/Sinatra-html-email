###################################################################################################
#font-style helper
def font_attrs options = {}
 opts =  {
    :color => $copy_col,
    :font_family => $font_family,
    :font_size => $font_size,
    :font_weight => $font_weight,
    :line_height => $line_height
  }.merge options
  #turn options into css list
  cssize opts
end
####################################################################################################
def cssize list
  #convert key => value into css style key: value;
  output = []
  list.each do |key,value|
    attr = key.to_s.split("_").join("-")
    output << "#{attr}: #{value};"
  end
  return output.join(" ")
end
####################################################################################################
#tables attributes helper
def reset options = {}
  {
    :margin => 0,
    :padding => 0,
  }.merge options
end
def body_style options = {}
  {
    :margin => 0,
    :padding => 0,
    :bgcolor => $wrapper_bg,
    :text => $copy_col,
    :link => $link_col,
    :vlink => $link_visited,
    :alink => $link_active,
  }.merge options
end
def table_attrs options = {}
  {
    :bgcolor => $main_bg,
    :border => 0,
    :cellpadding => 0,
    :cellspacing => 0,
    :width => $default_width,
  }.merge options
end
def td_attrs options = {}
  {
    :align => "left",
    :valign => "top",
  }.merge options
end
def img_attrs options = {}
  {
    :alt => " ",
    :border => 0,
    :style => "display: block; max-width: 100%; -ms-interpolation-mode: bicubic;",
    :src => "http://placehold.it/#{$img_def_dim}",
    :width => $flex_width,
  }.merge options
end
def link_attrs options = {}
  {
    :href => $test_link,
    :style => "color: #{$link_col}",
    :target => '_blank',
  }.merge options
end
def link_span_attrs options = {}
  opts = {
    :style => "color: #{$link_col};",
  }.merge options
end
####################################################################################################
#quick helpers
# most used attributes


#align
def center
  {:align => 'center'}
end
def left
  {:align => 'left'}
end
def right
  {:align => 'right'}
end
def middle
  {:valign => 'middle'}
end
def top
  {:valign => 'top'}
end
def bottom
  {:valign => 'bottom'}
end
#img
def img
  def alt
    #empty default alt attribute
    {:alt => " "}
  end
  def block
    {:style => 'display: block;'}
  end
end
def width value = '100%'
  {:width => value}
end
#cell
#set default value to 2 abs there is no point to add a (col|row)span on a single
#cell. Remember to set the correct span value to maximize compatibility
def rowspan value = 2
    {:rowspan => value}
end
def colspan value = 2
    {:colspan => value}
end
#gutter cell
def gutter_h
  {:width => $gutter_h}
end

def gutter_v
  {:height => $gutter_v}
end

def width value
  {:width => value}
end

def height value
  {:height => value}
end

def hr_style
  # "border-top-width: 1px; border-top-style: solid; border-top-color: #{$hr_color};"
  "border-top: 1px solid #{$hr_color};"
end

