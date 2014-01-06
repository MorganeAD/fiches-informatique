#!/usr/bin/ruby

require 'redcarpet'
require 'pygments'

class HTMLwithPygments < Redcarpet::Render::HTML
	def doc_header()
		"<html>
			<head>
				<meta charset=\"utf-8\" />
				<script src=\"http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js\"></script>
				<link rel=\"stylesheet\" href=\"http://yandex.st/highlightjs/7.5/styles/monokai_sublime.min.css\">
				<script src=\"http://yandex.st/highlightjs/7.5/highlight.min.js\"></script>
				<link href='http://fonts.googleapis.com/css?family=Gabriela' rel='stylesheet' type='text/css'>
				<style>
					body {
						margin: 0 auto;
						width: 768px;
					}
				</style>
			</head>
			<body>"
	end
	#def block_code(code, language)
	#	Pygments.highlight(code, :lexer => language)
	#end
	def doc_footer()
		"<script type=\"text/javascript\">
			$(document).ready(function() {
				$('pre code').each(function(i, e) {hljs.highlightBlock(e)});
				$('pre code').click(function() {  });
			});
		</script>
		</body></html>"
	end
end

markdown = Redcarpet::Markdown.new(
	HTMLwithPygments,
	:with_toc_data => true,
	:autolink => true,
	:space_after_headers => true,
	:fenced_code_blocks => true)

puts markdown.render(IO.read(ARGV[0]))
