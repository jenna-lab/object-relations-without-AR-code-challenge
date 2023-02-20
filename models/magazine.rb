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

    #Returns an array of authors who have written more than 2 articles for the magazine
    def contributing_authors
        authors = Hash.new(0)
        magazine_articles.each{ |article| authors[article.author] += 1 }
        authors.select{ |author, count| count > 2 }.keys
    end
end
