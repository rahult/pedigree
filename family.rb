require_relative 'member'

class Family
  attr_accessor :members

  def initialize(canvas)
    @canvas = canvas
    @members = []
  end

  def draw
    members.each_with_index do |member, index|
      space = index * 100
      member.draw
      member.move(space)
    end
    @canvas.mainloop
  end
end

