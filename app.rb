require 'sinatra'

parole = File.readlines("lezioni.tsv")[1..].map do |line|
  parts = line.split("\t")
  "#{parts[0].strip} : #{parts[1].strip}" if parts[1]
end.compact

get '/' do
  @words = parole.sample(10)
  erb :index
end

