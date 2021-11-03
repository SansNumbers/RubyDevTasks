class GeneratorDsl
  attr_accessor :lines

  def initialize
    @lines = []
  end

  def header str
    @lines << Header.new(str)
  end

  def text text
    @lines << Text.new(text)
  end

  def section header, text
    @lines << Section.new(header, text)
  end

  def link text, url
    @lines << Link.new(text, url)
  end

  def image alt, url
    @lines << Image.new(alt, url)
  end
end
