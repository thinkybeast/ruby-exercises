# You started writing a very basic class for handling files. However, when you begin to write some simple test code, you get a NameError. The error message complains of an uninitialized constant File::FORMAT.

# What is the problem and what are possible ways to fix it?

# The error is raised because constants have lexical scope in ruby. This means that when looking up the name of the constant, it will check the class that contains the constant, then classes or modules that contain the class, and finally look up the inheritance hierarchy. Because FORMAT is initialized and assigned in child classes, it is not in lexical scope. One could resolve this by either overwriting #to_s in any subclass that references the constant, or by referencing FORMAT via self's (the calling object's) class.


class File
  attr_accessor :name, :byte_content

  def initialize(name)
    @name = name
  end

  alias_method :read,  :byte_content
  alias_method :write, :byte_content=

  def copy(target_file_name)
    target_file = self.class.new(target_file_name)
    target_file.write(read)

    target_file
  end

  def to_s
    "#{name}.#{self.class::FORMAT}"
  end
end

class MarkdownFile < File
  FORMAT = :md

end

class VectorGraphicsFile < File
  FORMAT = :svg
end

class MP3File < File
  FORMAT = :mp3
end

# Test

blog_post = MarkdownFile.new('Adventures_in_OOP_Land')
blog_post.write('Content will be added soon!'.bytes)

copy_of_blog_post = blog_post.copy('Same_Adventures_in_OOP_Land')

puts copy_of_blog_post.is_a? MarkdownFile     # true
puts copy_of_blog_post.read == blog_post.read # true

puts blog_post