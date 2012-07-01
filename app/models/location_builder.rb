
class LocationBuilder
  @@TILES  = {
      :floor => 1,
      :wall => 2,
      :exit => 3
  }

  def self.TILES
    @@TILES
  end

  def tiles
    @tiles
  end

  def initialize
    @tiles = {}
  end

  def exit_at(p)
    x = p[:x]
    y = p[:y]
    z = p[:z]

    put_if_empty x-1, y-1, z, :exit
    put_if_empty x,   y-1, z, :exit
    put_if_empty x+1, y-1, z, :exit

    put_if_empty x-1, y, z,   :exit
    put          x,   y, z,   :floor
    put_if_empty x+1, y, z,   :exit

    put_if_empty x-1, y+1, z, :exit
    put_if_empty x,   y+1, z, :exit
    put_if_empty x+1, y+1, z, :exit
  end

  def room_at(p)
    x = p[:x]
    y = p[:y]
    z = p[:z]
    w = p[:w]
    h = p[:h]

    xes = 0..(w-1)
    yes = 0..(h-1)
    xes.each do |i|
      yes.each do |j|
        put i+x, j+y, z, :floor
      end
    end
    xes.each do |i|
      put i+x, y, z, :wall
      put i+x, y+h-1, z, :wall
    end
    yes.each do |i|
      put x, y+i, z, :wall
      put x+w-1, y+i, z, :wall
    end
  end

  def y_hall_at(p)
    room_at(p)
    x = p[:x]
    y = p[:y]
    z = p[:z]
    w = p[:w]
    h = p[:h]
    xes = 1..(w-2)
    xes.each do |i|
      put i+x, y, z, :floor
      put i+x, y+h-1, z, :floor
    end
  end

  private

  def put_if_empty(x,y,z,tile)
    put(x,y,z,tile) if @tiles[{:x=>x, :y=>y, :z => z}].nil?
  end

  def put(x,y,z,tile)
    @tiles[{:x=>x, :y=>y, :z => z}] = @@TILES[tile]
  end
end