#My First README
Today, we are going to review some command line commands, git, and object oriented programming.

This file is written in Markdown. Markdown is pretty easy, but I still forget some of the syntax, sometimes.. Like how to make tables, and I always need to look up how to insert images!

Fortunately, Markdown is small, and we can reference a [cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet).

## Command Line Commands
We can also syntax higlight code in blocks using triple backticks.
```

pwd
ls
whoami
mdkir lol_dir
cd lol_dir
touch my_file.rb
rm my_file.rb
cd ..
rm -r lol_dir # use `rm -rf <dir-name>` if you want to forcibly, recursively, remove stuff.
```

## Git
We can use git to track revision history for our projects. Simply by typing `git init` whithin a directory, we are able to keep track of every change that happens!!! (and more...)

Initiaize a git repo
```

git init
git status
git add README.md # or `git add <dir-name>`
git commit -m "write a message in here"

```

## Classes and OOP Review
Let's create a couple of classes. We want to think about objects and how they interact. A nice example might be Pacman eating balls, and ghosts.

Think about what objects we might need, and how they might interact.

We might want to have three classes:
  - Pacman 
  - Ghost
  - Ball

Let's start with the ball class. Ball object should instantiate with a default type of 'regular', if no argument is passed. 

```ruby
class Ball
  def initialize(type='regular')
     @type = type
  end
end
```

Now, think about Ghost. Ghosts can be read, blue, yellow or pink. Let's instantiate ghost without any arguments, and a random color among the 4 available.

```ruby
class Ghost
  
  attr_reader :color
  def initialize
    @color = %w(red blue yellow pink).sample
  end

end
```


