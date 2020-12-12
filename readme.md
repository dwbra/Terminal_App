
Link to my GIT for Assignment > https://github.com/dwbra/Terminal_App

## Software Development Plan

### 1. Describe at a high level what the application will do

My application will be a quiz game to test players bro-level. This is a satire game quiz built for players to have a laugh and answer a 
set of questions based on made up scenarios. The application will take in users input such as their name, answers to questions, and menu selections
and then return to players their score, highscores of other players, and a basic menu to exit the game if they wish. 

### 2. Identify the problem it will solve and explain why you are developing it

The problem it will solve is boredom. As a quiz game, the function of this application is to make players laugh and be entertained for a short period of time. 
The reason that I chose to develop this was purely out of personal satisfaction. I found the idea of a Bros Quiz hilarious and because I found it funny it really
kept me engaged throughout the project. At the start of the course our instructors said to build what you enjoyed and so keeping that in mind I sought to develop
something that I myself would find entertaining. 

### 3. Identify the target audience

The target audience for this game would primarily be males aged between 18-40 years old. The nature of this satire is based on pop-cultre and 
Austrailan slang references. Although some female users may find some of the questions funny, as a male I've just written jokes about what I know and 
find funny being a 28 year old male.

### 4. Explain how a member of the target audience will use it

A member of the target audience will launch the game in their terminal shell from running the install-run.sh file in the root directory. Once that is triggered, the game will start and present the player with an introduction to the game and set of instructions how to proceed. Once the player enters their name, they will be presented with a range of 10 questions from which they can answer either A, B, or C. Once the quiz is completed, they will be shown their score along with a custom message depending on how well they preformed. After that they will be presented with a menu of options to see highscores, play again, or exit the game.

## Features List
### Develop a list of features that will be included in the application. It must include:
### - at least THREE features
### - describe each feature

My MVP features list is succinct 
- As a user, I want to be able to be shown quiz questions and answer them
- As a user, I want to be able to see my score upon completion of the game
- As a user, I want to be able to see the highscores 
- As a user, I need to be able to play the game again
- As a user, I need to be able to exit the game

The first feature is the quiz method itself. This quiz method will operate as a loop with a conditional control structure put in place to ensure that user input is valid against the answer options. This method will use a for loop to iterate through a questions array and then check against a Questions class for the answer. 

The second feature involves keeping track of a users score. In the quiz method, the score variable will be set to 0. Upon each correct iteration where the question.answer equals the users input, their score will be incremented by 1. A user will have to answer ten questions therefore 10/10 will be the highest possible score. The use of shorthand operaters here will be essential in meeting the brief to keep DRY code.

The third feature is the highscores method. To keep a range of user highscores, once a player reaches over a score of 8+ their name will be pushed into a special array. This array will then be written into a .txt file in the root directory of the application. This .txt file will store all of the highscore player names and then be able to be called upon to read and present the highscores to users upon the request. 

The forth feature will be a method to trigger users to be able to play again. This will be an independent method that gets called in a menu of options. This independent menu method will present users with a range of choices. To either see the highscores, which would trigger the highscores method, to play the game again which would trigger a seperate method, or a simple exit with an output message. 
