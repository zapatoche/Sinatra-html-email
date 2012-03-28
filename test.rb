# def td_attrs options = {}
#   #defaults
#   opts = {
#     :align => "left",
#     :valign => "top",
#   }.merge options
#   attrize opts
# end
# 
# def attrize list
#   attrs = {}
#   list.each do |key,value|
#     puts "#{key} = #{value}" unless value === nil
#     unless value === nil
#       "#{key} = #{value}"
#     end
#   end
# end
# 
# p test = td_attrs
# 
# ####################
# #attributes generato<strong>r
</strong># def gen_attrs attrs = {}, temp = {}
#   list = attrs.merge temp
#   puts list.each {|key, value| "#{key} = #{value};"}
# end
# 
# def new_td_attrs
#    {
#     :bgcolor => $main_bg,
#     :border => 0,
#     :cellpadding => 0,
#     :cellspacing => 0,
#     :width => $flex_width
#   }
# end
# 
# def center
#   {:align => "center"}
# end
$copy_col = "#000000"
$font_family = "Arial, Helvetica, sans-serif"
$font_size = "13px"
$font_weight = "bold"
$line_height ="1.4"

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
#####

def cssize list
  #convert key => value into css style key: value;
  output = []
  list.each do |key,value|
    attr = key.to_s.split("_").join("-")
    output << "#{attr}: #{value};"
  end
  return output.join(" ")
end


p test = font_attrs
