require 'spec_helper'

describe Meowipsum do
  it 'has a version number' do
    expect(Meowipsum::VERSION).not_to be nil
  end

  describe '#generate' do
    let (:characters) { rand(30..500) }
    let (:output) { Meowipsum.generate(characters) }

    it 'returns n characters in kitty language' do
      expect(output.length).to eq characters
    end
  end

  describe '#generate_emoji' do
    let (:characters) { rand(30..500) }
    let (:output) { Meowipsum.generate_emoji(characters) }

    it 'returns n cat emojis' do
      expect(output.length).to eq characters
    end
  end
end
