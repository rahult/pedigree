class Member
  attr_accessor :name, :gender,
                :father, :mother

  def initialize(canvas, options)
    @canvas  = canvas
    @name    = options[:name]
    @tag     = options[:name].gsub(" ", "_")
    @gender  = options[:gender] || :male
    @father  = options[:father]
    @mother  = options[:mother]
    @x, @y   = 10, 10
    @step    = 50
    @gap     = 120
  end

  def depth
    has_parent? ? (1 + parent.depth) : 0
  end

  def has_parent?
    @father || @mother
  end

  def parent
    @father || @mother
  end

  def x1
    @x
  end

  def y1
    @y + (depth * @gap)
  end

  def x2
    x1 + @step
  end

  def y2
    y1 + @step
  end

  def symbol
    case @gender
    when :male
      TkcRectangle.new(@canvas, x1, y1, x2, y2, 'tag' => @tag)
    when :female
      TkcOval.new(@canvas, x1, y1, x2, y2, 'tag' => @tag)
    end
  end

  def draw
    symbol
    caption
  end

  def caption
    TkcText.new(@canvas, x1 + 10, y2 + 10, 'text' => @name, 'anchor' => 'nw', 'tag' => @tag)
  end

  def move(space)
    @canvas.move(@tag, x1 + space, 100)
  end
end

