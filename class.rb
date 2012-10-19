class Game

  def initialize(player_throw)

    @defeat = { :rock => :scissor, :paper => :rock, :scissor => :paper}
    @throws = @defeat.keys

    raise ScriptError, "You must execute: '#{$0}' followed by string and you put '#{player_throw.class}'" unless player_throw.class == String

    raise ScriptError, "You must execute: '#{$0}' followed by one of the following string '#{@throws.join(', ')}'" unless @throws.include? player_throw.to_sym


    @player_throw = player_throw.to_sym
    play
  end

  def play()

    @computer_throw = @throws.sample
    system("clear")
    puts("Rock, Paper & Scissor")
    puts()
    puts("You choose: #{@player_throw}")
    puts("Computer chooses: #@computer_throw")
    puts()

    puts("Result: ")
    if @player_throw == @computer_throw
       @answer = "There is a tie"
       puts (@answer)
     elsif @player_throw == @defeat[@computer_throw]
        @answer = "Computer wins; #{@computer_throw} defeats #{@player_throw}"
        puts (@answer)
     else
        @answer = "Well done. #{@player_throw} beats #{@computer_throw}"
        puts (@answer)
     end
  end
end


