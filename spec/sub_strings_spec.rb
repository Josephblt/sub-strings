# frozen_string_literal: true

# spec/sub_strings.rb

require 'rspec'
require './src/sub_strings'

describe Substrings do
  describe 'substrings' do
    it 'Lesson Example' do
      text = 'Howdy partner, sit down! How\'s it going?'
      dictionary = 'below down go going horn how howdy it i low own part partner sit'
      result = { 'down' => 1,
                 'go' => 1,
                 'going' => 1,
                 'how' => 2,
                 'howdy' => 1,
                 'it' => 2,
                 'i' => 3,
                 'own' => 1,
                 'part' => 1,
                 'partner' => 1,
                 'sit' => 1 }
      expect(Substrings.new.substrings(text, dictionary)).to eq(result)
    end
  end
end
