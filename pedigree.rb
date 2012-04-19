 require 'tk'
 require 'pry'

class Member
  attr_accessor :name, :gender

  def initialize(options)
    @name   = options[:name]
    @gender = options[:gender] || :male
  end

  def draw(canvas, move)
    case @gender
    when :female
      TkcRectangle.new(canvas,
                       50 + move,
                       50,
                       100 + move,
                       100)
    else
      TkcOval.new(canvas,
                  50 + move,
                  50,
                  100 + move,
                  100)
    end
  end
end

class Family
  attr_accessor :members

  def initialize(canvas)
    @canvas = canvas
    @members = []
  end


  def draw
    members.each_with_index do |member, index|
      move = index * 100
      member.draw(@canvas, move)
    end
    @canvas.mainloop
  end
end

canvas = TkCanvas.new(width: 800, height: 800)
canvas.pack

family = Family.new(canvas)
family.members << Member.new(name: "Rahul")
family.members << Member.new(name: "Mrinal")
family.members << Member.new(name: "Anil")
family.members << Member.new(name: "Sunita", gender: :female)

family.draw

