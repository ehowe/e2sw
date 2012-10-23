class E2SW
  def self.to_sw(string)
    @string = string
    @string.gsub!(/an/,"un")
    @string.gsub!(/An/,"Un")
    @string.gsub!(/au/,"oo")
    @string.gsub!(/Au/,"Oo")
    wc("a","e")
    wc("A","E")
    inw("ew","oo")
    inw_not("e","e-a")
    nw("en","ee")
    niw("e","i")
    niw("E","I")
    inw("f","ff")
    inw("ir","ur") 
    inw("i","ee")
    inw("ow","oo")
    niw("o","oo")
    niw("O","Oo")
    niw("tion","shun")
    @string.gsub!(/the( |$)/,"zee\\1")
    @string.gsub!(/The( |$)/,"Zee\\1")
    nw("th","t")
    inw("u","oo")
    @string.gsub!(/v/,"f")
    @string.gsub!(/V/,"F")
    @string.gsub!(/w/,"v")
    @string.gsub!(/W/,"v")
    return @string
  end

  def self.wc(search,replace)
    @string.gsub!(/#{search}(?=[A-Za-z'])/,replace)
  end

  def self.nw(search,replace)
    @string.gsub!(/#{search}(?=[^A-Za-z'])/,replace)
  end

  def self.inw(search,replace)
    @string.gsub!(/(\w+?)#{search}(\w+)?/,"\\1#{replace}\\2")
  end

  def self.inw_not(search,replace)
    @string.gsub!(/(\w+?)#{search}(?=[^A-Za-z']|$)/,"\\1#{replace}\\2") 
  end

  def self.niw(search,replace)
    if @string =~ /(^| )#{search}/
      @string.gsub!(/(^| )#{search}/,"\\1#{replace}")
    elsif @string =~ /#{search}( |$)/
      unless @string =~ /#{search}{2}/
        puts "im here"
        @string.gsub!(/#{search}( |$)/,"#{replace}\\1")
      end
    end
  end
end
