require 'pry'

class DocumentXMLFormatter
  include ActiveResource::Formats::XmlFormat

  def decode(xml)
  	result = ActiveResource::Formats::XmlFormat.decode(xml)['ids']
  	if result.kind_of? String
  		[{:id => result}]
  	else
  		raise "Don't know what to do with more than one until I have an example to play with."
  	end
  end
end