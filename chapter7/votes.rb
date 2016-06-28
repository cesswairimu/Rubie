lines = []
File.open("votes.txt") do |file|
lines = file.readlines
end
votes{}
lines.each do |line|
name = line.chomp
if votes[name] 
  votes[name] += 1
else
  votes[name] = 1
end
end
votes = Hash.new(0)
votes["Avan Probook"] = 1
p votes["Avan Probook"]
p votes["Think Pad"]

