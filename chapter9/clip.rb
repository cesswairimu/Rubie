module AcceptComments
  def comments
      @comments ||= []
    end
def add_comment(comment)
  comments << comment
end
end

class Clip
  def play
  puts "Playing #{object_id}"
end
end

class Video < Clip
 include AcceptComments
  attr_accessor :resolution
end

class Song < Clip
 include AcceptComments
  attr_accessor :beats_per_minute
end

class Photo
include  AcceptComments
def initialize
  @format = 'JPEG'
end
end


video = Video.new
video.add_comment("This music is dope")
video.add_comment("Wierd ending")
song = Song.new
song.add_comment("Kinda of hot though")
photo = Photo.new
photo.add_comment ("Looking cool")

p video.comments, song.comments, photo.comments
 


  
