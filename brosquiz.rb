require_relative ("validators")

class Question 
    attr_accessor :prompt, :answer, :name
    def initialize(prompt, answer)
        @prompt = prompt
        @answer = answer
        @name = name
    end
end

p1 = "You're at a lame house party so your bro can tune a chick. How do you wingman him? \n(a)Chat shit to her, then sneak off once his wasted.\n(b)Get wasted and tune her friend\n(c)Get wasted and not care"
p2 = "You're bro is moving houses and needs a hand, he asks if you want anything in return. You answer with? \n(a)Noze beers down the local all night on him\n(b)A couple cases of the most expensive craft beer money can buy\n(c)Him to dress up as partyboy from Jackass at the next house party"
p3 = "You've been asked to be your bros best man. He asks you to keep the speech tame. You either? \n(a)Write him off for the dog he is\n(b)Write a flowery speech of crap to impress the bridesmaids\n(c)Write a speech makimg him out to be the biggest legend of all time only at the last minute to tell the darkest story of his past and potentially jepordise the entire wedding."
p4 = "You're at kickons and your bro has passed out. You either? \n(a)Shave his eyebrows half off \n(b)Shave his head completely \n(c)Put his hand in a container of luke warm water"
p5 = "Your down the local tav, its packed, your smashed and your bros hot ex misses asks you to take her home. You tell her? \n(a)Lets get out of here, only to pass out in the cab on the way\n(b)Lets get out of here, only to wake up on the toliet in the tav still an hour later \n(c)Lets get out of here, only to wake up next to a Zinger Box and 50 missed calls from your bros."
p6 = "You've been hitting the beers all day at the races, you either? \n(a)Get a cab 2hrs away to a birds house and dog the bros \n(b)Hit the city with the bros \n(c)Get kicked out by 12am and have to drink in the local pub by yourself"
p7 = "You're out in the surf, you see your mate on the inside but its the wave of the day. You either? \n(a)Drop in on the dog and shred it \n(b)Drop in on him just to tackle him off it \n(c) Drop in on him and partywave it"
p8 = "You're on a Euro trip, your out and your bro is flogged, you either? \n(a)Send him home in a questionable Taxi \n(b)Get him a shot and tell him to suck it up \n(c)Get him rolling on mollywater then party till sunrise together"
p9 = "You're bro gets himself into a fight with some muppet at the local tav. You either? \n(a)Let him go one on one and see how it pans out \n(b)Come in from the side and check the bloke \n(c)Let your bro get a beatdown, his needs checking."
p10 = "Your bro gets with a bird you've been tuning. You either? \n(a)Give him a swift uppercut, followed by a frothdog and move on. \n(b)Laugh, she was minging anyway. \n(c)Wait until its just her and then tell her his got an STD." 

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
    puts "Alright Bro, check out the options below:"
    puts "Enter 1 to view the legendary Bro's who've hit the highscore"
    puts "Enter 2 to play again"
    puts "Enter 3 to exit."
    option = gets.chomp().to_i
    case option
    when 1
        puts highscores()
        menu()
    when 2 
        play_game()
    when 3
        puts "Later Bro"
        exit(0)
    else
        puts " "
        puts "You muppet, choose a number from 1-3."
        puts " "
        menu()
end
end

system("clear")
puts "Welcome to the Bro Challenge. A test of real Broship."
puts "Reckon you're a bro? Prove it by completing this quiz."
puts "Each correct answer is awarded 1 point." 
puts "The total score will be revealed at the end."
puts "Enter your name Bro"
@name = gets.chomp
if @name.empty? == true
    puts " "
    puts "You have to enter a name Bro"
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
                puts "Bro, how dumb are you? Enter a single letter A, B, or C to choose your answer."
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