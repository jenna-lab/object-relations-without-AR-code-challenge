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
    #Returns a unique array of Magazine instances for which the author has contributed to
    def magazines
        #from articles get magazine instances
        articles.map { |article| article.magazine}.uniq
    end

    #creates a new Article instance and associates it with that author and that magazine.
    def add_article(magazine,title)
     Article.new(self,magazine,title)
    end

end