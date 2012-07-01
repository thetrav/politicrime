require 'spec_helper'

describe LocationBuilder do

  W = LocationBuilder.TILES[:wall]
  F = LocationBuilder.TILES[:floor]
  X = LocationBuilder.TILES[:exit]
  N = nil

  def make(values)
    tiles = {}
    values.each_with_index do |row, y|
      row.each_with_index do |tile, x|
        tiles[{:x => x, :y => y, :z => 0}] = tile
      end
    end
    tiles
  end

  def stringify(map, xStart, yStart, xEnd, yEnd)
    tiles = []
    (yStart..yEnd).each_with_index do |y|
      row = []
      (xStart..xEnd).each_with_index do |x|
        tile = map[{:x => x, :y => y, :z => 0}]
        row << (tile.nil? ? 0 : tile)
      end
      tiles << row
    end
    strings = tiles.map {|row| row.to_s}
    strings.join("\n")
  end

  def compare(expected, actual, x, y, xe, ye)
    e = stringify(expected, x,y,xe,ye)
    a = stringify(actual, x,y,xe,ye)
    puts "expecting\n#{e}\n\ngot\n#{a}\n\n"
    e.should eq a
  end

  it "should build a room" do
    builder = LocationBuilder.new
    builder.room_at(:x => 0, :y => 0, :z => 0, :w => 3, :h => 3)
    expected = make([
            [W, W, W],
            [W, F, W],
            [W, W, W],
        ])
    tiles = builder.tiles
    compare(expected, tiles, 0, 0, 2, 2)
  end

  it "should build a room with a hall to an exit" do
    builder = LocationBuilder.new
    builder.room_at(:x => 0, :y => 3, :z => 0, :w => 5, :h => 5)
    builder.y_hall_at(:x => 1, :y => 2, :z => 0, :w => 3, :h => 2)
    builder.exit_at(:x => 2, :y => 1, :z => 0)

    expected = make([
        [ N, X, X, X, N ],
        [ N, X, F, X, N ],
        [ N, W, F, W, N ],
        [ W, W, F, W, W ],
        [ W, F, F, F, W ],
        [ W, F, F, F, W ],
        [ W, F, F, F, W ],
        [ W, W, W, W, W ]
    ])
    tiles = builder.tiles
    compare(expected, tiles, 0, 0, 4, 7)
  end
end