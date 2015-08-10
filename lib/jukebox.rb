require 'pry'

class Jukebox

  SONGS = [
    "Phoenix - 1901",
    "Tokyo Police Club - Wait Up",
    "Sufjan Stevens - Too Much",
    "The Naked and the Famous - Young Blood",
    "(Far From) Home - Tiga",
    "The Cults - Abducted",
    "Phoenix - Consolation Prizes",
    "Harry Chapman - Cats in the Cradle",
    "Amos Lee - Keep It Loose, Keep It Tight"
  ]

  def initialize (songs)
    @songs = songs
  end

  def help
    puts "(?=.*help)(?=.*list)(?=.*play)(?=.*exit)"
  end

  def list
    puts @songs
  end

  def call
  end

  def play (input = SONGS[0])
    SONGS.each_with_index do |song, number|
      if input == song
        puts "Now Playing: #{song}"
      elsif input == (number + 1).to_s
        puts "Now Playing: #{song}"
      end
    end
  end

  # def get_input
  #   @input = gets.chomp.downcase
  # end

end

test = Jukebox.new(    [
      "Phoenix - 1901",
      "Tokyo Police Club - Wait Up",
      "Sufjan Stevens - Too Much",
      "The Naked and the Famous - Young Blood",
      "(Far From) Home - Tiga",
      "The Cults - Abducted",
      "Phoenix - Consolation Prizes",
      "Harry Chapman - Cats in the Cradle",
      "Amos Lee - Keep It Loose, Keep It Tight"
    ])
