def td_attrs options = {}
  #defaults
  opts = {
    :align => "left",
    :valign => "top",
  }.merge options
  attrize opts
end

def attrize list
  attrs = {}
  list.each do |key,value|
    puts "#{key} = #{value}" unless value === nil
    unless value === nil
      "#{key} = #{value}"
    end
  end
end

p test = td_attrs

####################
#attributes generator
def gen_attrs attrs = {}, temp = {}
  list = attrs.merge temp
  puts list.each {|key, value| "#{key} = #{value};"}
end

def new_td_attrs
   {
    :bgcolor => $main_bg,
    :border => 0,
    :cellpadding => 0,
    :cellspacing => 0,
    :width => $flex_width
  }
end

def center
  {:align => "center"}
end
