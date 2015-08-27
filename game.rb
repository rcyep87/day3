# 1. establish user interface/input
# 2. create Card class to establish variables for card
# 3. build cards in Deck and assign values as appropriate (2-10)
# 4. search in @card array for "J", "Q", "K", "A"; where "J", "Q", "K" exist, swap out with
#    value of 10; where "A" exist, swap out with value of 11
# 5. have player and dealer draw their own unique pair of cards

class Card

  def initialize(suit, value)
    @suit = suit
    @value = value
  end

  def get_value
    @value
  end

  def display
    "#{@value} of #{@suit}"
  end

end

class Deck

  def initialize
    @card = Array.new
    [:hearts, :clubs, :spades, :diamonds].each do |suit|
      2.upto(10) do |value|
        new_card = Card.new(suit, value)
        @card.push(new_card)
      end
      @card.push(Card.new(suit, "J"))
      @card.push(Card.new(suit, "Q"))
      @card.push(Card.new(suit, "K"))
      @card.push(Card.new(suit, "A"))
    end
    @card
  end

  def draw
    @card.pop
  end

  def shuffle
    @card.shuffle!
  end

  def get_card
    @card
  end

end

puts "Welcome to the game that will rob you of your money, Blackjack!!!"
puts "Are you ready? (Y)es or (N)o > "
response = gets.chomp
if response.upcase == "Y"
  puts "Dealer: Let's get started!"
deck = Deck.new
puts deck.get_card
elsif response.upcase == "N"
  puts "Dealer: Come back whenever you're ready to lose."
end
