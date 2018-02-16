require "stringer/version"

module Stringer

  def self.spacify *strings
    string = []
    strings.each do |s|
      string << s
    end
    string = string.join(' ')
  end

  def self.minify string, max
    s = ""
    if string.length <= max
      return string
    else
      for x in 0...max
        s += string[x]
        x += 1
      end
      s += "..."
    end
  end

  def self.replacify string, replace, replacement
    new_string =string.gsub(/#{replace}/, replacement)
  end

  def self.tokenize string
    arr = string.split(" ")
  end

  def self.removify string, remove
    new_string =string.gsub(/#{remove}#{+ " "}/, "")
    new_string
  end
end
