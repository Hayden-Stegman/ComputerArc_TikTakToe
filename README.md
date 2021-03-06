# Technical Report for Tic Tac Toe in MASM x32
By Hayden Stegman & Zachary Jones

## About
Our Computer Architecture Final Project was the age-old game of Tik Tak Toe written in MASM x32. 
This would be a fully functional game running in the command line where two players can go head to head and play as many times as they want. 
The game will keep track of how many wins each player has as well as how many ties.

The reason we decided to do this project was largely motivated by our original intent on using an Arduino Uno board to program a physical version of the game featuring buttons and lights to represent the X's and O's. However, as with many things in this project we had to change these plans due to Corona Virus sending everyone home after thanksgiving break. Due to us no longer being in the same physical location we decided to do a version that runs in the command line while adding a few features such as the score counter.

## Goals:
1. Tik Tak Toe functionality in the command line.
    - Choose Either X or O
    - Print The Board
    - Choose which cell to print to
    - Win Conditions
    - Reset Game
    - End Game
3. Be able to play multiple games in one run.
4. Win Counter
5. Play Against an AI (Stretch Goal)

## Initial Setup!
The first thing we attempted to do was simply follow Appendix E and get a simple project set up that would allow us to run both MASM x64 along with C++ in a single project.
(For the first round of working on the project we were working in MASM x64 which later was decided to switch to Masm x32).
This was an easy first task that we were able to get out of the way very quickly.
Next, we created a GitHub Repo and made sure that everything was working and that collaborating would be easy and efficient.

With the initial setup, we moved on to doing light planning for how we wanted our system to run. This was a simple talk through of everything we wanted the game to do.

## Challenges:
### Printing the Board - (Passing Strings from MASM to C++)
One of the first challenges we encountered was figuring out how we would print the board to the console.
Our first idea was to attempt to have a function in C++ that MASM could pass a string that would output the board to the console using cout statements.
This would occur after each player makes a move, and at the start of a round to display the current moves that have been made along with each position a player can
decide to play.

The biggest issue with this we encountered was attempting to call the command in C++ as well as passing this string.
After some playing with the issue, we eventually resolved it, realizing that we forgot to add the Extern "C" void *FunctionName* to the top of our .cpp file.
As well, we opted to switch from passing a string to instead passing the array that stores board positions so that way we don't have to construct the string in MASM
while also allowing the C++ function to be better defined.

However issues persisted and eventually we were forced to switch to a more C++ heavy approach.
This new approach worked by assigning more specific roles to what would be handeled in c++ and what would be handeld in Masm.
The decision was as follows.
C++ would handle all things that were pertaining to printing to the console, as well as recieving user input.
MASM would direct game flow.  

### Game Flow
With that, another major challenge we faced was figuring the way the game would flow through all of its states that would allow it to function properly as well as the supporting functions needed. This was more of a preliminary challenge rather than one that happened when coding as we ran into it while drawing out how we wanted this program to function and flow. Ultimately we overcame it by drawing out the program and checking the flow visually. This was also made easier once we had settled on the idea of using MASM for game flow and C++ for input and output.

### Player Turns
Another challenged faced while working on the game was figuring out the specifics of how we wanted to store what players turn it was. Our initial idea was to have a jump point in MASM that you could jump to named "SwitchPlayer". This would allow 

