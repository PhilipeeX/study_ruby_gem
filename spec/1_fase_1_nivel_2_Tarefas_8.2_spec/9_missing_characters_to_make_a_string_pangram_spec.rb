require 'spec_helper'
require_relative '../../lib/1_fase_1_nivel_2_Tarefas_8.2/9_missing_characters_to_make_a_string_pangram'


RSpec.describe MissingCharacters do
  describe '.missing_characters' do
    it 'returns the missing characters for the input string' do
      string = 'welcome to geeksforgeeks'
      expect(MissingCharacters.missing_characters(string)).to eq('abdhijnpquvxyz')
    end

    it 'returns an empty string for a pangram input string' do
      string = 'The quick brown fox jumps over the lazy dog'
      expect(MissingCharacters.missing_characters(string)).to eq('')
    end

    it 'returns all characters for an empty input string' do
      string = ''
      expect(MissingCharacters.missing_characters(string)).to eq('abcdefghijklmnopqrstuvwxyz')
    end

    it 'returns all characters for an input string without any letters' do
      string = '1234567890!@#$%^&*()'
      expect(MissingCharacters.missing_characters(string)).to eq('abcdefghijklmnopqrstuvwxyz')
    end

    it 'ignores duplicate letters in the input string' do
      string = 'abcdddeeefff'
      expect(MissingCharacters.missing_characters(string)).to eq('ghijklmnopqrstuvwxyz')
    end
  end
end