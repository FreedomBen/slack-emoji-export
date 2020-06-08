#!/usr/bin/env ruby

# generated this array using: for i in ls *alias*; do echo "'$i'",; done > aliases.txt

aliases = [
  'alert2.alias:siren',
  'biblethump.alias:sadness',
  'black_square.alias:black_large_square',
  'blastoff.alias:liftoff',
  'bones.alias:fistbump',
  'bump.alias:fistbump',
  'canopy-seal.alias:canopy-commitment',
  'cmdz.alias:undoman',
  'crying-laugh.alias:joy',
  'curses.alias:swearing',
  'cyclist.alias:biker',
  'deal.alias:shake',
  'eyeroll2.alias:face_with_rolling_eyes',
  'fire2.alias:burn',
  'flame.alias:burn',
  'flowerofchaos.alias:distracted',
  'friends.alias:jennifer-anniston',
  'ftw.alias:yay2',
  'hammer_and_sickle.alias:communist',
  'hellokitty.alias:kitty_dance',
  'hootenanny.alias:music',
  'iot.alias:iota',
  'jonathansquad.alias:greensquad',
  'just-do-it.alias:shia',
  'knuckles.alias:fistbump',
  'laugh.alias:lol',
  'leglamp.alias:majoraward',
  'livemas.alias:barf',
  'load.alias:hold',
  'pound-it.alias:fistbump',
  'pyramid.alias:ponzi',
  'rocket2.alias:liftoff',
  'rockin-out.alias:jammin',
  'ruh-roh.alias:scooby',
  'sad.alias:crying',
  'seveneleven.alias:711',
  'shia-labeouf.alias:shia',
  'shipit.alias:squirrel',
  'smiling-sun.alias:happy-sun',
  'soc2.alias:handcuffs',
  'starbucks3.alias:saltedcaramelmocha',
  'this.alias:point_up',
  'tnt.alias:dynamite',
  't_o.alias:bigplay',
  'troll.alias:trollface',
  'tsu-2.alias:semi-smile2',
  'tsu.alias:semi-smile',
  'tux.alias:linux',
  'twocents.alias:2cents',
  'uh-uh.alias:jonathan',
  'vanilla-ice.alias:word-to-your-mother',
  'wait.alias:hold',
  'waiting.alias:loading',
  'white_square.alias:white_large_square',
  'who-the-hell-do-you-think-i-am.alias:kamina-glasses',
  'woot.alias:yay2',
]

require 'byebug'

def extension(file)
  file.split('.').last
end

def filename(file)
  Dir.glob("downloaded-images/*").find{ |i| i =~ /^downloaded-images\/#{file}\./ }
end

aliases.each do |a|
  begin
    as = a.split(':')
    src = filename(as[1])
    dest = "downloaded-images/#{as.first.gsub(/alias/, extension(src))}"
    `cp '#{src}' '#{dest}'`
  rescue NoMethodError => e
    puts "Error:  not doing #{a}"
  end
end
