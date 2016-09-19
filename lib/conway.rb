class World
  attr_reader :length, :width, :cells
  def initialize(length, width)
    @length = length
    @width = width
    @cells = []
  end

  def populate_board
    width.times do |row|
      row_array = []
      length.times do |column|
        row_array << Cell.new(row, column)
      end
      @cells << row_array
    end

  end

  def neighbor_finder
  end

  def will_die?
    live_neighbors > 3 || live_neighbors < 2
  end

  def will_be_born?
    live_neighbors == 3
  end
end

class Cell
  attr_reader :position
  def initialize(row, column)
    @alive = false
    @position = [row, column]
  end

  def alive?
    alive
  end

  def count_live_neighbors
    neighbors.filter(&:alive?).reduce(:+)
  end
end
