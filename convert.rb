#!/usr/bin/ruby

require 'redcarpet'
require "htmlentities"

class HTMLwithPygments < Redcarpet::Render::HTML
	def doc_header()
		IO.read('doc_header.html')
	end
	def block_code(code, language)
		""
	end
	def doc_footer()
		IO.read('doc_footer.html')
	end
end

markdown = Redcarpet::Markdown.new(
	HTMLwithPygments,
	:tables => true,
	:with_toc_data => true,
	:autolink => true,
	:space_after_headers => true,
	:fenced_code_blocks => true,
	:no_intra_emphasis => true,
	:filter_html => false)

puts markdown.render(IO.read(ARGV[0]))
