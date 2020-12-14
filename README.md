# Technical Report for TikTakToe in MASM x64
Authors: Hayden Stegman & Zachary Jones

# Initial Setup!
The first thing we attempted to do was simply follow Appendix E and get a simple project set up that would allow up to run both MASM x64 along with C++ in a single project.
This was an easy first task that we were able to get out of the way very quickly.
Next we created a GitHub Repo and made sure that everything was working and that collaborating would be easy and effient.

With the inital setup we moved on to doing light planning for how we wanted out system to run. This was a simple talk through of everything we wanted to game to.

# Goals:
1. Tik Tak Toe functionality in the command line.
    - Choose Either X or O
    - Print The Board
    - Choose which cell to print to
    - Win Conditions
    - Reset Game
    - End Game
3. Be able to play multiple games in one run.
4. Win Counter

# Challenges:

Printing the Board
One of the first challenges we encountered was figuring out how we would print the board to the console.
Our first idea was to attempt to have a function in C++ that MASM could pass a string to that would output the board to the console using cout statements.
This would occur after 
