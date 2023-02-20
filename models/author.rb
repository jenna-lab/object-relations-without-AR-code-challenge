class Author 
    attr_reader :name
    def initialize(name)
        @name = name
    end

    #Returns an array of Article instances the author has written
    def articles
        #filter from articles
        Article.all.filter {|article|
        article.author == @name }
    end
end