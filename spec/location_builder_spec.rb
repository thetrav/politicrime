require 'spec_helper'

describe LocationBuilder do
  it "should build a room" do
    builder = LocationBuilder.new
    builder.room_at(:x => 0, :y => 0, :z => 0, :w => 3, :h => 3)
    expected = {
        {:x=>0,:y=>0,:z=>0} => LocationBuilder.TILES[:wall],
        {:x=>1,:y=>0,:z=>0} => LocationBuilder.TILES[:wall],
        {:x=>2,:y=>0,:z=>0} => LocationBuilder.TILES[:wall],
        {:x=>0,:y=>1,:z=>0} => LocationBuilder.TILES[:wall],
        {:x=>1,:y=>1,:z=>0} => LocationBuilder.TILES[:floor],
        {:x=>2,:y=>1,:z=>0} => LocationBuilder.TILES[:wall],
        {:x=>0,:y=>2,:z=>0} => LocationBuilder.TILES[:wall],
        {:x=>1,:y=>2,:z=>0} => LocationBuilder.TILES[:wall],
        {:x=>2,:y=>2,:z=>0} => LocationBuilder.TILES[:wall],
    }
    builder.tiles.should eq(expected)
  end
end