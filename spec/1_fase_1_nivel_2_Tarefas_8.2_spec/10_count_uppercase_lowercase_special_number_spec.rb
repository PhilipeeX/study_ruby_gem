require 'spec_helper'
require_relative '../../lib/1_fase_1_nivel_2_Tarefas_8.2/10_count_uppercase_lowercase_special_number'

RSpec.describe CountUppercaseLowercaseEtc do
  describe '.count' do
    it 'counts the occurrence of characters in the input string' do
      string = '#GeeKs01fOr@gEEks07'
      expected_output = "Upper case letters : 5\nLower case letters : 8\nNumbers : 4\nSpecial Characters : 2\n"

      expect { CountUppercaseLowercaseEtc.count(string) }.to output(expected_output).to_stdout
    end

    it 'counts the occurrence of characters in a different input string' do
      string = '*GeEkS4GeEkS*'
      expected_output = "Upper case letters : 6\nLower case letters : 4\nNumbers : 1\nSpecial Characters : 2\n"

      expect { CountUppercaseLowercaseEtc.count(string) }.to output(expected_output).to_stdout
    end

    it 'handles an empty input string' do
      string = ''
      expected_output = "Upper case letters : 0\nLower case letters : 0\nNumbers : 0\nSpecial Characters : 0\n"

      expect { CountUppercaseLowercaseEtc.count(string) }.to output(expected_output).to_stdout
    end

    it 'counts the occurrence of characters in a string with only one type of character' do
      string = 'AAAA'
      expected_output = "Upper case letters : 4\nLower case letters : 0\nNumbers : 0\nSpecial Characters : 0\n"

      expect { CountUppercaseLowercaseEtc.count(string) }.to output(expected_output).to_stdout
    end

    it 'handles a string with no characters of a certain type' do
      string = '1234567890'
      expected_output = "Upper case letters : 0\nLower case letters : 0\nNumbers : 10\nSpecial Characters : 0\n"

      expect { CountUppercaseLowercaseEtc.count(string) }.to output(expected_output).to_stdout
    end
  end
end