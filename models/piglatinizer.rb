class PigLatinizer
	attr_reader :word

	def initialize
		@word = word
	end

	def piglatinize(sentence)
		array = sentence.split(" ")
		array.map do |word|
			piglatin(word)
		end.join(" ")
	end

	def piglatin(word)
  		if word =~ (/\A[aeiou]/i)
    		word = word + 'way'
  		elsif word =~ (/\A[^aeiou]/i)
    		match = /\A[^aeiou]/i.match(word)
    		word = match.post_match + match.to_s + 'ay'
  		end
  		word
	end

end