require 'json'

class Sentence

	attr_accessor :text

	def initialize()
		@text = nil
	end

	def get_new_sentence
		quote_endpoint = 'https://api.forismatic.com/api/1.0/?method=getQuote&key=457653&format=json&lang=en'
		res = RestClient.get(quote_endpoint)
		res_json = JSON.parse(res)
		self.text = res_json["quoteText"].strip
	end

end