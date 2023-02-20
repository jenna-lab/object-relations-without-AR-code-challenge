class Magazine 
    attr_accessor :name, :category
    @@all = []

    def initialize(name,category)
        @name = name
        @category = category
        @@all << self 
    end
      
    def self.all
        @@all
    end 

    #helper method for articles
    def magazine_articles
        Article.all.filter {|article|article.magazine.name == @name}
    end

    #Returns an array of Author instances who have written for this magazine
    def contributors
     magazine_articles
    .map{|article|article.author}.uniq
    end

     #Given a string of magazine's name, this method returns the first magazine object that matches
    #magazine is a class method
    def self.find_by_name(name)
        Magazine.all.find{|magazine|
        magazine.name == name}
    end

    #Returns an array strings of the titles of all articles written for that magazine
    def article_titles
        magazine_articles.map{|articles|articles.title}
    end

end