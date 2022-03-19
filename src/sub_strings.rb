# frozen_string_literal: true

# Substring search method.
class Substrings
  def substrings(text, substrings)
    search_text = text.downcase
    result_hash = {}
    substrings.split(' ').each do |item|
      matches = search_text.scan(item.downcase).length
      result_hash[item] = matches if matches.positive?
    end
    result_hash
  end
end

puts 'Enter search text:'
text = gets.chomp
puts 'Enter substring dictionary:'
dictionary = gets.chomp
print Substrings.new.substrings(text, dictionary)

# below down go going horn how howdy it i low own part partner sit
# Howdy partner, sit down! How's it going?
