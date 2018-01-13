class Runner
  attr_reader :count
  include Scene1, Scene2, Scene3, Scene4, Scene5, All

  OTHER_ACTOR_LINE = ["other actor", "say this is line two", "line three"]

  AMBER_LINE =  ["here is a clue", "this is a test", "this is the third one"]

  def initialize
   @count = 0
  end

  def other_actor_lines
    `say "#{OTHER_ACTOR_LINE[@count]}"`
  end

  def hint
    cue = AMBER_LINE[@count].split(" ")
    # require "pry"; binding.pry
      puts "BECKY: #{cue.first(3).join(" ")}"
  end

  def amber_current_line
    puts "BECKY: #{AMBER_LINE[@count]}"
    @count += 1
  end
end

r = Runner.new
loop do
  puts "Hello and welcome to the Becky Shaw simulation experience!!!!!"
  sleep(1)
  puts "¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥¥"
  sleep(1)
  puts "Which act would you like to rehearse? Choose from (1) - (5) or ALL"
  sleep(1)
  puts "Just type Scene #"
  sleep(1)
  input = gets.chomp
    if input == "Scene 1"
      r.some_method
    elsif input == "Scene 2"
      r.another_method
    elsif input == "Scene 3"
      r.another_1
    elsif input == "Scene 4"
      r.another_2
    elsif input == "Scene 5"
      r.another_3
    elsif input == "ALL"
      r.final
    end
  r.other_actor_lines
    if input == "-hint"
      r.hint
      gets.chomp
    elsif input == "-help"
      r.help
      gets.chomp
    end
  r.amber_current_line
  next_one = gets.chomp
  break if next_one == "exit"
end


=begin
TODO

  * intro prompt that leads into the "current" scene
  * Make different Scene Functionality
  * Add -help feature
    * -hint will give first three words to the thing
  *
=end
