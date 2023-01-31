class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14) {[]}
    @name1 = name1
    @name2 = name2
    place_stones

  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    4.times {(0..5).each {|i| cups[i] << :stone}}
    4.times {(7..12).each {|i| cups[i] << :stone}}
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if start_pos > @cups.length
    raise "Starting cup is empty" if @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    step = 0
    @cups[start_pos].length.times do |i|
      if start_pos + i + 1 == 13
        @cups[(start_pos + i + 2) % 13] << @cups[start_pos].pop
        step += 1
      else
        @cups[(start_pos + i + 1) % 13] << @cups[start_pos].pop
        step += 1
      end
    end
    ending_cup_idx = ((start_pos + step) % 13)
    self.render
    self.next_turn(ending_cup_idx)
    return ending_cup_idx if !@cups[ending_cup_idx].empty?
    return :switch if @cups[ending_cup_idx].length == 1
    return :prompt if ending_cup_idx == 6 || ending_cup_idx == 13

  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    return true if @cups[0..5].all? {|cup| cup.empty?} || @cups[7..12].all? {|cup| cup.empty?}
    false
  end

  def winner
    return :draw if @cups[6].length == 6 && @cups[13].length == 6
    if @cups[6].length > @cups[13].length
      return @name1
    else
      return @name2
    end
  end
end
