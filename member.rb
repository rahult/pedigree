class Member
  attr_accessor :name, :gender,
                :x1, :y1,
                :x1, :y2

  def initialize(canvas, options)
    @canvas  = canvas
    @name    = options[:name]
    @tag     = options[:name].gsub(" ", "_")
    @gender  = options[:gender] || :male
    @father  = options[:father]
    @mother  = options[:mother]
    @x1, @y1 = 50, 50
    @x2, @y2 = 100, 100
  end

  def symbol
    case @gender
    when :male
      TkcRectangle.new(@canvas, @x1, @y1, @x2, @y2, 'tag' => @tag)
    when :female
      TkcOval.new(@canvas, @x1, @y1, @x2, @y2, 'tag' => @tag)
    end
  end

  def draw
    symbol
    caption
  end

  def caption
    TkcText.new(@canvas, @x1 + 10, @y2 + 10, 'text' => @name, 'anchor' => 'nw', 'tag' => @tag)
  end

  def move(space)
    @canvas.move(@tag, @x1 + space, 100)
  end
end

