Get emoji list:

    1.  Either use slack's API tester or get-emoji-list.sh
    2.  Save to emoji-list.json

Download emoji: 

    1.  dl.rb

Copy aliases over:

    1. Generate array for top of aliases.rb: `for i in ls *alias*; do echo "'$i'",; done > aliases.txt`
    1. update and run aliases.rb

For uploading:

    1.  https://github.com/smashwilson/slack-emojinator
