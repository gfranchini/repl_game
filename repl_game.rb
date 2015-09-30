#==========================METHODS===========================#
def prompter
  puts ""
  puts "For the best experience, please fullscreen your terminal..."
  sleep(2)
end
#say new lines to create space between paragraphs
def newParagraphSpacer(n)  
  n.times {puts " " }
end
#creates a line of * as a sameLineDivider
def sameLineDivider(n)
  n.times {|x| print "*"}
end
#creates a loading scheme
def load(n,m)
   n.times {
      puts "*"
      sleep(m)
}
   
end
#pushes text over to the left by n chars
def horizontalSpacer(n , text)
  n.times {print " "}
  puts text
end
#new print method
def say(text)
  puts text
  puts " "
  sleep(1.4)
end
#method used to validate name
def playerNameValidator
 puts "\"What's your name?\""
 playerName = gets.chomp.capitalize
  until (playerName.length > 1) && (playerName.is_a?String)
  puts "\"I'm sorry, I didn't hear you well. What's your name?\""
  playerName = gets.chomp.capitalize
  end 
 return playerName
end
#companion name validator
def companionNameValidator
 puts "What shall we call your new friend?"
 companionName = gets.chomp.capitalize
  until (companionName.length > 1) && (companionName.is_a?String)
  puts "\"I'm sorry, I didn't hear you well. What's did you decide as a name?\""
  companionName = gets.chomp.capitalize
  end 
 return companionName
end
#companion type
def companionTypeValidator(type)
    type.downcase
  if type == "fire" || type == "water" || type =="grass"
     companionType = type 
  else 
    until type == "grass" || type == "fire" || type == "grass"
    puts "Plese select a valid option:"
    "Which one will you choose?: fire, water, or grass?"
    type = gets.chomp.downcase
    companionType = type
    end
  end
return companionType
end

#battlechoice validator
def battleChoiceValidator(x)
   if x == "r" || x =="f"
      battleChoice = x
   else
       until x == "r" or x == "f"
        puts "That is not a valid choice! Please try again"
        puts "You can either: (r)un or (f)ight!...."
        x = gets.chomp
        battleChoice = x
       end
   return battleChoice
  end
end
#If the user wants to run, the system will decide whether he can or cannot run based on the function below.
def randomizer
    number = rand(0..1)
    return number
end
def dialogue(text, vspace = "")
  1.times {puts vspace}
  print "                               " + text + "\n"
  sleep(1.4)
end
def monsterGenerator
  monType = rand(0..3)
  if monType == 1
    puts "It's a fire type!"
  elsif monType == 2
    puts "It's a water type!"
  else
    puts "It's a grass type!"
  end
  return monType
end         

# def attackNormalizer (companionType, monType)
#   case attackNormalizer
#   when companionType = "fire" && monType = 1 
#     attack = attack * 1
#   elsif companionType = "fire" && monType = 2
#     attack = attack * 1.3
#   elsif companionType = "fire" && montype = 3
#     attack = attack * 0.5
# end
#========================END OF METHODS=====================#
#Start of the game
prompter  
newParagraphSpacer(15) 
horizontalSpacer(40, "██████╗  ██████╗ ██████╗ ███████╗
                                        ╚════██╗██╔═████╗╚════██╗██╔════╝
                                         █████╔╝██║██╔██║ █████╔╝███████╗
                                        ██╔═══╝ ████╔╝██║██╔═══╝ ╚════██║
                                        ███████╗╚██████╔╝███████╗███████║
                                        ╚══════╝ ╚═════╝ ╚══════╝╚══════╝")


newParagraphSpacer(27)
puts "by Giancarlo Franchini"
puts  "Version 1.0"
sameLineDivider (115)
sleep(2)
newParagraphSpacer(35)
horizontalSpacer(45,"The year is 2025.")
newParagraphSpacer(18)
say ">>> You open the time machine door and see that you are in the middle of a barren wasteland. No people 
in sight. Just miles and miles of desert and dust ahead. Your elevator time travel machine faintly beeps, indicating
that it needs more fuel for reuse. You decide to venture out into the desert in search of plutonium..."
say ">>> After miles of walking aimlessly, you finally run into a decrepid warehouse and peek inside. You find an 
old tattered man staring back at you."
dialogue "\"Who goes there?\", says the man."
playerName = playerNameValidator
dialogue "\"Nice to meet you " + playerName + ".\""
dialogue "\"What purpose do you have here?\""
dialogue "\"How are you even alive?\""
newParagraphSpacer(5)
say ">>> You explain to him that you are from another time and are looking for atomic fuel to get you back home."
newParagraphSpacer(4)
dialogue "\"My name is Larry.\""                              
dialogue "\"I have been hiding out here from the evil monsters with"
dialogue "the protection of my animal companions.\""
dialogue "\"The year is 2025. About 10 years ago, there was a great war."
dialogue "\"Nuclear fallout killed the majority of life on Earth, however,"
dialogue "the surving inhabitants grew stronger.\""
dialogue "\"The animals have evolved to utilize special abilities from the radiation.\""                                
dialogue "\"You should not go further into the void without one of my animals to help you on your journey to" 
dialogue "the heavily guarded facility located within the Mines of Moria.\""
dialogue "\"If you plan on making it alive, you must take a companion. Please "
dialogue "take one of these three animals.\""
newParagraphSpacer(3)
puts ">>> On the table there are three animals: A fire type, water type, and grass type."
say ">>> Which one will you choose? fire, water, grass?"
companionType = companionTypeValidator(gets.chomp)
case companionType
  when "fire"
    dialogue "\"You have chosen the fire type!\""
    dialogue "\"Fire types are very good against grass types. They will also keep you warm in the winter.\""
    dialogue "\"Watch out for water types, however!\""
  when "water"
    dialogue "\"You have chosen the water type!\""
    dialogue "\"Water types are amazing against fire types\""
    dialogue "\"Watch out for grass types, however!\""
  else "grass"
    dialogue "\"You have chosen the grass type!\""
    dialogue "\"Grass types are great against water types.\""
    dialogue "\"Watch out for fire types, however!\""
end

newParagraphSpacer (1)
companionName  = companionNameValidator
sleep(1.4)
dialogue "\"Great!\""
dialogue "\"Now " + companionName + " will follow you on your journey and keep you safe. May you find what you are looking for.\"\n"
sleep(2)
load(5,1)
newParagraphSpacer(15)
horizontalSpacer(25, "*****You leave and venture out toward the mountains*****")
newParagraphSpacer(15)

#Options when running into a monster
say "Oh no! You ran into a monster!!!"
monsterGenerator
say "Your animal scanner shows that it has 25 HP!"
say "You can either: (r)un or (f)ight!"

battleChoice = battleChoiceValidator(gets.chomp) #Validates the choices of either fighting or running
random = randomizer #generates either a 0 or a 1 at random
#If the user wants to run, the system will decide whether he can or cannot run based on the function below.
if battleChoice == "r" && random == 0
      say "Sorry...you can't run away from this one"
      battleChoice = "f"
      sleep(1)
      say "

    ██████╗ ██████╗ ███████╗██████╗  █████╗ ██████╗ ███████╗    ████████╗ ██████╗     ███████╗██╗ ██████╗ ██╗  ██╗████████╗██╗
    ██╔══██╗██╔══██╗██╔════╝██╔══██╗██╔══██╗██╔══██╗██╔════╝    ╚══██╔══╝██╔═══██╗    ██╔════╝██║██╔════╝ ██║  ██║╚══██╔══╝██║
    ██████╔╝██████╔╝█████╗  ██████╔╝███████║██████╔╝█████╗         ██║   ██║   ██║    █████╗  ██║██║  ███╗███████║   ██║   ██║
    ██╔═══╝ ██╔══██╗██╔══╝  ██╔═══╝ ██╔══██║██╔══██╗██╔══╝         ██║   ██║   ██║    ██╔══╝  ██║██║   ██║██╔══██║   ██║   ╚═╝
    ██║     ██║  ██║███████╗██║     ██║  ██║██║  ██║███████╗       ██║   ╚██████╔╝    ██║     ██║╚██████╔╝██║  ██║   ██║   ██╗
    ╚═╝     ╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝       ╚═╝    ╚═════╝     ╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚═╝
             "
      battle = true
      sleep(2)
elsif battleChoice == "r" && random == 1
      say "You have narrowly escaped!"
      battle = false
else
      say "
    ██████╗ ██████╗ ███████╗██████╗  █████╗ ██████╗ ███████╗    ████████╗ ██████╗     ███████╗██╗ ██████╗ ██╗  ██╗████████╗██╗
    ██╔══██╗██╔══██╗██╔════╝██╔══██╗██╔══██╗██╔══██╗██╔════╝    ╚══██╔══╝██╔═══██╗    ██╔════╝██║██╔════╝ ██║  ██║╚══██╔══╝██║
    ██████╔╝██████╔╝█████╗  ██████╔╝███████║██████╔╝█████╗         ██║   ██║   ██║    █████╗  ██║██║  ███╗███████║   ██║   ██║
    ██╔═══╝ ██╔══██╗██╔══╝  ██╔═══╝ ██╔══██║██╔══██╗██╔══╝         ██║   ██║   ██║    ██╔══╝  ██║██║   ██║██╔══██║   ██║   ╚═╝
    ██║     ██║  ██║███████╗██║     ██║  ██║██║  ██║███████╗       ██║   ╚██████╔╝    ██║     ██║╚██████╔╝██║  ██║   ██║   ██╗
    ╚═╝     ╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝       ╚═╝    ╚═════╝     ╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚═╝
                                                                                                                              "
    sleep(1)
    battle = true
end

#the battle
playerHP = 25
monsterHP = 25
attack = rand(0..1)
playerHP = 25
monsterHP = 25
slapDamage = 3
punchDamage = 5
biteDamage = 6
scratchDamage = 4
attack = rand(0..1)

playagain = true
say companionName + " get ready to attack!"
while battle == true do 
    until playerHP == 0 || monsterHP == 0
    #player move
      
      say "What move would you like to do?: (p)unch or (s)lap?"
      move = gets.chomp
        if playerHP <= 0 || monsterHP <= 0
          break
        elsif move == "p"
          say "You have used punch! It delt 5 damage!"
          monsterHP = monsterHP - punchDamage 
          puts "The monster is at #{monsterHP} HP!"
          puts " "
          sleep(1.5)
        else
          say "You used slap! It delt 3 damage!"
          monsterHP = monsterHP - slapDamage
          puts "The monster is at #{monsterHP} HP!"
          puts " "
          sleep(1.5)
        end
    #monster move
        attack = rand(0..1)
        if playerHP <= 0 || monsterHP <= 0
          break
        elsif attack == 1
            puts "The monster is going to attack!"
            sleep(1.5)
            puts "The monster used bite! It delt 6 damage!"
            playerHP = playerHP - biteDamage
            puts "You are at #{playerHP} HP!"
            sleep(1.5)
        else
            puts "The monster is going to attack!"
            sleep(1.5)
            puts "The monster used scratch! It delt 4 damage"
            playerHP = playerHP - scratchDamage
            puts "You are at #{playerHP} HP!"
            sleep(1.5)
        end
    end

    if monsterHP < playerHP
        say "
        ██╗   ██╗ ██████╗ ██╗   ██╗    ██╗    ██╗██╗███╗   ██╗██╗
        ╚██╗ ██╔╝██╔═══██╗██║   ██║    ██║    ██║██║████╗  ██║██║
         ╚████╔╝ ██║   ██║██║   ██║    ██║ █╗ ██║██║██╔██╗ ██║██║
          ╚██╔╝  ██║   ██║██║   ██║    ██║███╗██║██║██║╚██╗██║╚═╝
           ██║   ╚██████╔╝╚██████╔╝    ╚███╔███╔╝██║██║ ╚████║██╗
           ╚═╝    ╚═════╝  ╚═════╝      ╚══╝╚══╝ ╚═╝╚═╝  ╚═══╝╚═╝
                                                         

        "
        load(5,0.5)
        say "You advance toward your destination, find the plutonium, and make it back home."
        battle = false
    else
        say "Oh no, you have been defeated and died. You never make it back to your time. Suxors."
        say "
         ██████╗  █████╗ ███╗   ███╗███████╗     ██████╗ ██╗   ██╗███████╗██████╗ 
        ██╔════╝ ██╔══██╗████╗ ████║██╔════╝    ██╔═══██╗██║   ██║██╔════╝██╔══██╗
        ██║  ███╗███████║██╔████╔██║█████╗      ██║   ██║██║   ██║█████╗  ██████╔╝
        ██║   ██║██╔══██║██║╚██╔╝██║██╔══╝      ██║   ██║╚██╗ ██╔╝██╔══╝  ██╔══██╗
        ╚██████╔╝██║  ██║██║ ╚═╝ ██║███████╗    ╚██████╔╝ ╚████╔╝ ███████╗██║  ██║
         ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝     ╚═════╝   ╚═══╝  ╚══════╝╚═╝  ╚═╝
                                                                          "

                                                                                                                               
    end
end

