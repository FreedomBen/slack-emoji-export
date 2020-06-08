#!/usr/bin/env ruby

require 'json'
require 'byebug'

def emoji
  $emoji ||= JSON.parse(File.read('emoji-list.json'))["emoji"]
  $emoji
end

def url_for(name)
  retval = ''
  emoji.each do |e|
    retval = e[1] if e.first == name && !(e[1] =~ /^alias/)
  end
  retval
end

def sanitize_name(name)
  name.gsub("'", '')
end

emoji.each do |e|
  # if this is an alias, download the real one
  url = e[1] =~ /^alias/i \
    ? url = url_for(e[1].gsub('alias:', '')) \
    : e[1]
  unless url.empty?
    cmd = "curl '#{url}' > downloaded-images/#{sanitize_name(e.first)}.#{url.split('.').last}"
    puts cmd
    `#{cmd}`
  else
    puts "No emoji found for '#{e[1]}'. It may be aliased to a built-in emoji"
  end
end

puts 'done'
