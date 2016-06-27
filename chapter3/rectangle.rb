class Rectangle
attr_accessor :length, :height
def width=(value)
if value<0
raise " Width can not be negative"
end
@width = value
end
def height=(value)
if value<0
raise "Height cannot be negative"
end
@height = value
end
def area
width*height
end
end

rectangle = Rectangle.new
rectangle.width = -4

