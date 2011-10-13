####################################################################################################
#font-style helper
def font_attrs options = {}
  #defaults
  opts = {
    :color => $copy_col,
    :font_family => "Arial, Helvetica, sans-serif",
    :font_size => "13px",
    :font_weight => "normal",
    :line_height => "1.4"
  }.merge options
  #turn options into css list
  cssize opts
end
####################################################################################################
#tables attributes helper
def table_attrs options = {}
  {
    :bgcolor => $main_bg,
    :border => 0,
    :cellpadding => 0,
    :cellspacing => 0,
    :width => $default_width,
  }.merge options
  #turn list into html attributes
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
    :style => "display: block; max-width: 100%;",
    :width => $flex_width,
  }.merge options
end
def link_attrs options = {}
  {
    :href => "/",
    :style => "color: #{$link_col}",
    :target => '_blank',
  }.merge options
end
def link_span_attrs options = {}
  opts = {
    :style => "color: #{$link_col};",
  }
end
####################################################################################################
def cssize list
  #convert key => value into css style key: value;
  output = []
  list.each do |key,value|
    attr = key.to_s.split("_").join("-")
    output << "#{attr}: #{value};"
  end
  return output
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
  {:valign => bottom}
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
#gutter cell
def gutter_h
  {:width => $gutter_h}
end

def gutter_v
  {:height => $gutter_v}
end

