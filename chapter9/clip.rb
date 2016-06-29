module AcceptComments
  def comments
    if @comments
      @comments
    else
      @comments = []
    end
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

video = Video.new
video.add_comment("This music is dope")
video.add_comment("Wierd ending")
song = Song.new
song.add_comment("Kinda of hot though")
p video.comments, song.comments


  
