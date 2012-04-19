require 'tk'
require 'pry'
require_relative 'member'

class Family
  attr_accessor :members, :canvas

  def initialize
    @canvas = TkCanvas.new(width: 600, height: 600)
    @canvas.pack
    @gap = 100
    @members = []
  end

  def draw
    sorted_members = members.sort_by { |m| [m.depth, !m.gender, m.name] }
                     .group_by { |m| m.depth }

    sorted_members.each do |depth, members|
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

