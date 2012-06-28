
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

  def exit_at(params)

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
        put i+x, j+y, z, @@TILES[:floor]
      end
    end
    xes.each do |i|
      put i+x, y, z, @@TILES[:wall]
      put i+x, y+h-1, z, @@TILES[:wall]
    end
    yes.each do |i|
      put x, y+i, z, @@TILES[:wall]
      put x+w-1, y+i, z, @@TILES[:wall]
    end
  end

  def hall_at(params)

  end

  private

  def put(x,y,z,tile)
    @tiles[{:x=>x, :y=>y, :z => z}] = tile
  end
end