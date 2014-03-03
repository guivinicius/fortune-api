class Fortune

  def initialize(long = nil, dirty = nil)
    @long  = long.to_s
    @dirty = dirty.to_s
  end

  def text
    # Check if Fortune program exists
    if system("command -v fortune >/dev/null 2>&1")
      `fortune #{options}`
    else
      "It looks like you don't have the Fortune program. Check README.md to install instructions."
    end

  end

  def options
    "#{set_length} #{set_offensiveness}"
  end

  private

  def set_length
    case @long
    when "0"
      "-s"
    when "1"
      "-l"
    end
  end

  def set_offensiveness
    "-o" if @dirty == "1"
  end

end
