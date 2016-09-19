class World
  attr_read :length :width :cells
  def initialize(length, width)
    @length = length
    @width = width
    @cells = []
  end

  def populate_board
    width.times do |row|
      row = []
      length.times do |column|
        row << Cell.new
      end
    end
  end
end

class Cell
  def initialize
    @alive = false
  end
end
