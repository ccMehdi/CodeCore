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
In classical programming (OOP), constructor, getters and setters are very common. Let's take a look at how they work. To do so, let's build out a class file for generating person objects.

In ruby, we can cerate a class file by simply declaring something as a class, then we are able to instantiate objects of that class (that is, the constructor method is assumed).

```ruby
class Person

end

THis is the same as if we wrote a constructor method that takes no arguments, like so
```ruby
clas Person
  # constructor
  def initialize
  end
end
```

If we want person objects to have attributes, such as a name, an email address, etc. We can either create them when we instantiate new objects, or after.
whatever argument we decide to pass into the constructor will need to be provided when instantiating new objects, unless we have a default values.

Let's add name and email address arguments.
```ruby
class Person
  def initialize(name, email_address)
  end
end
```

It is pretty useless to have a method with required arguments, if we aren't doing anything with them, so let's save them in varibles.
```ruby
class Person
  def initialize(name, email_address)
    name = name
    email_address = email_address
    # can also be writer name, email_address = name, email_address
    puts "Hi! My name is #{name} and my email address is #{email_address}."
  end
end
```

If we want to return a person's name with a method call like `person_instance.name`, we have to create a method called `name1.
```ruby
class Person
  # constructor method
  def initialize(name, email_address)
    @name, @email_address = name, email_address
    puts "Hi! My name is #{name} and my email address is #{email_address}."
  end

  def name
    @name
  end
end
```

Now, what if we want to change a person's name after the person object has been instantiate?
```ruby
class Person
  # constructor method
  def initialize(name, email_address)
    @name, @email_address = name, email_address    #instance variable
    puts "Hi! My name is #{name} and my email address is #{email_address}."
  end

  # Getter Method
  # This is the same as attr_reader :name
  def name
    @name
  end

  # Setter Method
  # This is the same as attr_writer :name
  def name=(new_name)
    @name = new_name
  end
end
```

### Pacman
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
