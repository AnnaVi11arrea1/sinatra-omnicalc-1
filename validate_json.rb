require "json"

def validate_json(file_path)
  file_content = File.read(file_path)
  JSON.parse(file_content)
  puts "#{file_path} is valid."
rescue JSON::ParserError => e
  puts "#{file_path} is invalid: #{e.message}"
end

Dir.glob("**/*.json").each do |file|
  next if File.zero?(file) # Skip empty files
  validate_json(file)
end
