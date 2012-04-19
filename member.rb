class Member
  attr_accessor :name, :gender, :symbol

  def initialize(canvas, options)
    @canvas = canvas
    @name   = options[:name]
    @gender = options[:gender] || :male
  end

  def draw
    case @gender
    when :male
      TkcRectangle.new(@canvas, 50, 50, 100, 100, 'tag' => @name)
    when :female
      TkcOval.new(@canvas, 50, 50, 100, 100, 'tag' => @name)
    end
    TkcText.new(@canvas, 60, 110, 'text' => @name, 'anchor' => 'nw', 'tag' => @name)
   end

  def move(space)
    @canvas.move(@name, 50 + space, 100)
  end
end

