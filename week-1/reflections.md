# 1.1 Think About Time Reflection
With these resources, I learned about the Pomodoro Technique, and making habits.  The Pomodoro Technique is a form of Time Boxing, in which you have a set time of 25 minutes to work towards completing a task, and then 5 minutes to take a break doing something else, and then repeating until the task is finished.  The articles and videos about habits discussed a lot about associating small habits with things you already do, or something that has some sort of an intrinsic value.  If you keep associating these things, they will eventually become commonplace in your routine, or you will eventually be able to do them without incentive items.  After looking at these articles, I've come to realize that I manage my time pretty poorly.  I tend to try and tackle a task and get as much as i can done until I feel that I've accomplished enough, or that my mind is too fatigued to do it anymore.  Now I see how ineffective that's been because everything would take much longer than it should due to distractions, or procrastination.  I plan on using Time Boxing and habit forming strategies to make myself more effective in my time at DBC and beyond so that I can maximize my efficiency.

## 1.2 The Command Line Reflection
The shell is a program that takes text commands and gives them to your operating system to perform.  Bash is the type of shell that we are working with.  For me, the most challenging part of going through this material was learning how to piece these things together and use different commands together.  I got stuck when I had to copy a file to a different directory, but after reviewing what had been said in previous sections, I figured it out.  I was able to use the commands in my terminal just as they were described, and I found the commands "ls" and "grep" to be the most useful.  I found them the most useful because of their utility to find specific text, or look through a directory to find what you need.

 

pwd - print working directory to show the path to the current folder

ls - list all files and directories in current directory

mv - rename directory or file

cd - change directory to given path

../ - up one directory level

touch - create empty file

mkdir - make new directory

less - open a file to be viewed in the terminal

rmdir - remove directory

rm - remove file

help - gives information on the given command

### 1.4 Forking and Cloning Reflection
If I were writing instructions on how to create, fork, and clone a repo, I would say to create a repo on the user's GitHub homepage, fork a repo on the repo's GitHub page, and then use the provided clone links to clone it in a terminal.  Using the GitHub website is very easy and straightforward for new users.  Forking a repository is advantageous to creating a new one because you can view someone else's work and modify it without changing what the original author has in their repository, so you can work with it on your own.  I didn't have any troubles setting up git or GitHub because all of the instructions were very straightforward, but I learned about how easy it is to access open source code and all the potential learning can be done from the work of others, as well as how this could work out for future collaborative efforts.

#### 1.5 Tracking Changes Reflection

How does tracking and adding changes make developers' lives easier?

Tracking and adding changes makes developers' lives easier because you can see the up-to-date work of all collaborators in a central location. 

What is a commit?

A commit is a snapshot of the updated file that is ready to be merged into the master version of the file.  

What are the best practices for commit messages?

Commit messages are usually written in the present or imperative tense, as if you're explaining your task before you did it ("I have to do this" rather than "I did that").  

What does the HEAD^ argument mean?

The HEAD^ argument corresponds with the last item that was committed.  Earlier commits can be identified by HEAD^n with n being a number in the list of committed files.  

What are the 3 stages of a git change and how do you move a file from one stage to the other?

The three stages of git changes are untracked, added, and committed.  You move from untracked to added with "git add .".  You move from added to committed with "git commit -m MESSAGE" where message is your commit message. 

Write a handy cheatsheet of the commands you need to commit your changes?

git add .
git commit -m "MESSAGE"

What is a pull request and how do you create and merge one?

Pull requests bring everything from the origin to your local git so you can have the most recent iteration of everyone's work.  This way you can always have an up-to-date working environment.

Why are pull requests preferred when working with teams?

Pull requests are preffered because when people are working separately, they can have easy access to the most updated work in their local git environment