require 'active_resource'
require 'logger'
require "nakeddocs-client-ruby/document-xml-formatter"

ActiveResource::Base.logger = Logger.new(STDERR)
ActiveResource::Base.logger.level = Logger::DEBUG


class ActiveResource::Connection
  # Creates new Net::HTTP instance for communication with
  # remote service and resources.
  def http
    http =  configure_http(new_http)
    http.set_debug_output STDERR
    return http
  end
end

class Document < ActiveResource::Base
  self.site = "http://paulgrenyer.net/"
  self.user = "chris"
  self.password = "odell"
  self.format = DocumentXMLFormatter.new

	def self.collection_path(prefix_options = {}, query_options = nil)
		"/NakedDocs/rest/dms/"
	end

	def self.element_path(id, prefix_options = {}, query_options = nil)
	  check_prefix_options(prefix_options)

	  prefix_options, query_options = split_options(prefix_options) if query_options.nil?
	  "/NakedDocs/rest/dms/#{URI.parser.escape id.to_s}#{query_string(query_options)}"
	end

end