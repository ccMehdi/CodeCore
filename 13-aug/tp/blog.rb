class Blog

  def initialize(blog_post)
    @blog_post = blog_post
    @comments = []
  end

  attr_accessor :blog_post
  attr_accessor :comments

  def list_posts
    puts "#{@blog_post}"
  end

  def show_comments
     puts "comments"
    @comments.each {|x| puts x}
  end

  def add_comments(comment)
    @comments << comment
  end

end

blog_post = "Lorem Ipsum is simply dummy text of the printing and typesetting
industry. Lorem Ipsum has been the industry's standard dummy text ever since
the 1500s, when an unknown printer took a galley of type and scrambled it to
make a type specimen book. It has survived not only five centuries, but also
the leap into electronic typesetting, remaining essentially unchanged. It was
popularised in the 1960s with the release of Letraset sheets containing
Lorem Ipsum passages, and more recently with desktop publishing software
like Aldus PageMaker including versions of Lorem Ipsum."


blog = Blog.new(blog_post)
blog.list_posts

loop do
  blog.show_comments
  puts "Would you like to comment? (Y/n)"
  answer = gets.chomp
  if answer == "Y"
    puts "Please enter a comment"
    blog.add_comments(gets.chomp)
  else
    puts "Thank You"
    break
  end
  blog.list_posts
end
