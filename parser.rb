require 'treetop'

f = File.open("parse.y", "r") do |f|
  f_content = f.read
  b_start = f_content =~ (/^%%/) #find beginning of grammar wiring section
  f_content = f_content[(b_start + 2)..-1]
  b_end = f_content =~ (/^%%/) #find end of grammar wiring section
  f_content = f_content[0..(b_end - 1)]. #extract grammar section
      gsub(/\s+/, ' '). #strip whitespace and
      gsub(/\/\*[^*]*\*+(?:[^*\/][^*]*\*+)*\//, "") #strip comments
  Treetop.load(
    File.expand_path(
      File.join(File.dirname(__FILE__), 'y_parser.treetop')
    )
  )
  parser = YParser.new
  parser.parse(f_content).bnf #print out grammar in BNF
end
