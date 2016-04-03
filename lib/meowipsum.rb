require "meowipsum/version"

module Meowipsum

  BASE_CHARACTERS = 100.freeze

  def self.generate(characters=BASE_CHARACTERS)
    str = "meow " * characters
    self.limit_characters(str, characters)
  end

  def self.generate_emoji(characters=BASE_CHARACTERS)
    str = "\xF0\x9F\x90\xB1 " * characters
    self.limit_characters(str, characters)
  end

  def self.limit_characters(str, characters)
    str[0...characters]
  end

end
