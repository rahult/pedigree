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
    @spouse  = options[:spouse]
    @x, @y   = 10, 10
    @step    = 50
    @gap     = 120
  end

  def ydepth
    if has_spouse?
      @spouse.ydepth
    elsif has_parent?
      1 + parent.ydepth
    else
      0
    end
  end

  def xdepth
    if has_spouse?
      @spouse.xdepth
    elsif has_parent?
      1 + parent.xdepth
    else
      0
    end
  end

  def has_spouse?
    @spouse
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
    @y + (ydepth * @gap)
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

