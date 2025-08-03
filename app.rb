file_path = File.join(__dir__,'lezioni.tsv')
parole = []

File.open(file_path, 'r') do |file|
  # Skip the header row
  header = file.gets
  file.each_line do |line|
   # Split the line by tab character
    parts = line.split("\t") 

    # Extract verb translation and verb forms from .txt
    parole.push("#{parts[0].strip} : #{parts[1].strip}")
     



     end
    # store conjugation data w/ the translation as the key 
end


require 'sinatra'

get '/' do
  parole.sample(10).join("<br>")
end

