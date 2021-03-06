require_relative ("validators")
require ("artii")
require ("colorize")
require ("rspec")

class Question 
    attr_accessor :prompt, :answer, :name
    def initialize(prompt, answer)
        @prompt = prompt
        @answer = answer
        @name = name
    end
end

p1 = "You're at a lame house party so your bro can tune a chick. How do you wingman him? \n(a)Chat deep life smoke to her, then sneak off once his wasted\n(b)Get wasted and tune her friend\n(c)Stick around at the party to drink all the expensive booze"
p2 = "You're bro is moving houses and needs a hand, he asks if you want anything in return. You answer with? \n(a)When you move next his help all day\n(b)A couple cases of the most expensive craft beer money can buy\n(c)Him to wear something riduclious to the next house party"
p3 = "You've been asked to be your bros best man. He asks you to keep the speech tame. You either? \n(a)Write him off for the dog he is\n(b)Write a flowery speech to impress the bridesmaids\n(c)Praise him as an absolute legend in the hopes he will do the same for you someday"
p4 = "You're at kickons and your bro has passed out. You either? \n(a)Shave his eyebrows half off \n(b)Shave his head completely \n(c)Put his hand in a container of luke warm water"
p5 = "Your down the local tav, its packed, your smashed and your bros hot ex misses asks you if you wanna share a cab home. You tell her? \n(a)Lets get out of here, only to pass out in the cab on the way\n(b)Lets get out of here, only to wake up on the toliet in the tav still an hour later \n(c)Lets get out of here, only to wake up next to a Zinger Box and 50 missed calls from your bros."
p6 = "You've been hitting the beers all day at the races, you either? \n(a)Get a cab 2hrs away to kick on with a group of randoms you just met \n(b)Hit the city with the bros \n(c)Get kicked out by 12am and have to drink in the local pub by yourself"
p7 = "You're out in the surf, you see your mate on the inside but its the wave of the day. You either? \n(a)Drop in on the dog and shred it \n(b)Drop in on the dog just to tackle him off it \n(c) Drop in on him and partywave it"
p8 = "You're on a Euro trip, your out and your bro is flogged, you either? \n(a)Send him home in a questionable Taxi \n(b)Get him a shot and tell him to suck it up \n(c)Leave the club, go get sleezy kebabs and walk around for hours before finding the hostel"
p9 = "You're bro gets himself into a fight with some muppet at the local tav. You either? \n(a)Let him go one on one and see how it pans out \n(b)Come in from the side and check the bloke \n(c)Let your bro get a beatdown, his needs checking."
p10 = "Your bro gets with a bird you've been tuning. You either? \n(a)Give him a swift uppercut, followed by a frothdog and move on. \n(b)Laugh, she was average anyway. \n(c)Do nothing, whose got time for that level of drama" 

questions = [
    Question.new(p1, "b"),
    Question.new(p2, "a"),
    Question.new(p3, "b"),
    Question.new(p4, "a"),
    Question.new(p5, "c"),
    Question.new(p6, "a"),
    Question.new(p7, "b"),
    Question.new(p8, "c"),
    Question.new(p9, "b"),
    Question.new(p10, "a")
]

$name_highscores = []

def highscores
    File.read("highscores.txt")
end

def play_game
    load "brosquiz.rb"
end

def menu()
    puts "Alright Bro, check out the options below:".light_cyan.bold
    puts "Enter 1 to view the legendary Bro's who've hit the highscore".white.bold
    puts "Enter 2 to play again".white.bold
    puts "Enter 3 to exit.".white.bold
    option = gets.chomp().to_i
    case option
    when 1
        puts highscores().light_blue.italic.bold
        menu()
    when 2 
        play_game()
    when 3
        b = Artii::Base.new
        puts b.asciify("Later Bro").light_cyan.bold
        exit(0)
    else
        puts " "
        puts "You muppet, choose a number from 1-3.".red.bold
        puts " "
        menu()
end
end

system("clear")
a = Artii::Base.new
puts a.asciify("Bro Quiz").light_cyan.bold
puts "Welcome to the Bro Quiz. A test of real Broship.".light_cyan.bold
puts "Reckon you're a bro? Prove it by completing this quiz.".light_cyan.bold
puts "Each correct answer is awarded 1 point.".white.bold
puts "The total score will be revealed at the end.".white.bold
puts "Enter your name Bro".green.bold
@name = gets.chomp
name_valid = Validators.validate_name_input(@name)
if !name_valid
    puts " "
    puts "You have to enter a name Bro".red.bold
    @name = gets.chomp
end


def run_test(questions)
    answer = ""
    score = 0

    for question in questions
        puts question.prompt
        answer = gets.chomp()
        answer_valid = Validators.validate_answer_input(answer)
        if !answer_valid
                puts " "
                puts "Bro, how dumb are you? Enter a single letter A, B, or C to choose your answer.".red.bold
                puts " "
                redo
        end
        system("clear")
        if answer == question.answer
            score += 1
        end
    end

    if score <= 3
        puts ("You got " + score.to_s + "/" + questions.length.to_s + "! You're pathetic! You call yourself a bro? If it were up to me you'd be left alone on a desert island for a year to learn the real meaning of the word bro.")
    elsif score <= 6
        puts ("You got " + score.to_s + "/" + questions.length.to_s + "! Weak, just weak. You need to go and spend some time in the tav with th bros to really learn more about true broship and learn the ways of the bro.")
    elsif score <= 8 
        puts ("You got " + score.to_s + "/" + questions.length.to_s + "! You've earnt my respect. You are well on the way to being a bro. Continue to follow the path and you shall be rewarded my bro.")
    else 
        puts ("You got " + score.to_s + "/" + questions.length.to_s + "! You are a fucking legend! You have mastered the way of the bro and deserve all of the glory that Oden possesses. Beers are on me and let us bro down!")
        $name_highscores << @name
        legends = $name_highscores
        File.write("highscores.txt", legends.join + "\n", mode: "a") 
    end

    puts " "
    puts menu()
end

run_test(questions)