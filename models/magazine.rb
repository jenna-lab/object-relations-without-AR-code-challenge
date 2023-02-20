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
end