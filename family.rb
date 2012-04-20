require 'tk'
require 'pry'
require_relative 'member'

class Family
  attr_accessor :members, :canvas

  def initialize
    @canvas = TkCanvas.new(width: 700, height: 800)
    @canvas.pack
    @gap = 100
    @members = []
  end

  def draw
    sorted_members = members.sort_by { |m| [m.ydepth, m.gender, m.name] }
                     .group_by { |m| m.ydepth }

    sorted_members.each do |ydepth, members|
      space = 0
      members.each do |member|
        space += @gap
        member.draw
        member.move(space)
      end
    end

    @canvas.mainloop
  end
end
