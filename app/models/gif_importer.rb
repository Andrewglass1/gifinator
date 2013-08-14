class GifImporter
	attr_accessor :term

	def initialize(options={})
		@term      = options[:term]
		@search_id = options[:search_id]
	end

	def import
		gifs = Giphy.search(@term, {limit: 5})
		import_gifs(gifs)
	end

private

	def import_gifs(gifs)
		gifs.each do |gif|
			url = gif.instance_variable_get("@hash")['images']['fixed_height']['url']
			Gif.create(:name => @term, :url => url, :search_id => @search_id)
		end
	end
end