require 'json'
require 'pry'
puts 'What is your Github username?'
username = $stdin.gets.chomp
json_response = `curl -u #{username} 'https://api.github.com/users/#{username}/repos'`
if json_response.include? 'Bad credentials'
  abort 'There was an issue w/ username or password. '\
  'Please try again.'
end
repositories = JSON.parse(json_response)
repositories.each do |repo|
  repo_name = repo['name']
  owner = repo['owner']['login']
  is_private = repo['private']
  is_fork = repo['fork']
  puts "Would you like to delete #{repo_name}?"
  puts "\tOwned by #{owner}"
  puts "\tThis is a private repo" if is_private
  puts "\tThis is a forked repo" if is_fork
end
