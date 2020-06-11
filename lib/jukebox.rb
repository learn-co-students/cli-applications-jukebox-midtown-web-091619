songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  choice = gets.strip
    songs.each do |x|
      if choice.to_i.between?(1, songs.length)
        puts "Playing #{songs[choice.to_i-1]}"
        return
      elsif x.include?(choice)
        puts "Playing #{choice}"
        return
      else
        puts "Invalid input, please try again"
        return
      end
    end
end

def list(songs)
  i = 0
  while i < songs.length
    puts "#{i+1}. #{songs[i]}"
    i+=1
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  command_input = gets.strip
  if command_input.strip == "exit"
    exit_jukebox
  elsif command_input == "list"
    list(songs)
    run(songs)
  elsif command_input == "play"
    play(songs)
    run(songs) 
  elsif command_input == "help"
    help
    run(songs)
  else
    puts "Invalid input, please try again"
    run(songs)
  end
end
