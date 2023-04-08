$name = "global variable accessed"

class Article
  # class Variable
  @@active = "active"
  @@category = "default"
  @@punchline = "PUNCHLINE THAT CAN BE CHANGED"

  # constant variable
  PUNCHLINE = "PUNCHLINE"

  def initialize(title)
    # instance variable
    @title = title
  end

  def getCategory
    puts "The category name: #{@@category}"

    if isCategoryActive?
      puts "The category is active."
    end
  end

  def isCategoryActive?
    @@active == "active"
  end

  def getName
    puts "The name is: #{$name}"
  end

  #   def changePunchline(punchline)
  #     PUNCHLINE = punchline
  #   end

  def canChangePunchline(punchline)
    @@punchline = punchline
  end

  def getNewPunchline
    puts "New punchline: #{@@punchline}"
  end
end

article = Article.new("Hello, world!")
article.getCategory
article.isCategoryActive?

article.getName

# article.changePunchline("Punchline changed") # => error expected
article.canChangePunchline("Punchline changed")
article.getNewPunchline
