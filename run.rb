require 'pry'
require_relative 'models/author'
require_relative 'models/magazine'
require_relative 'models/article'


a1=Author.new("Author1")
a2=Author.new("Author2")
mag1=Magazine.new("Mag1","Cat1")
mag2=Magazine.new("Mag2","Cat1")
mag3=Magazine.new("Mag3","Cat2")
art1=Article.new(a1,mag1,"Title1")
art2=Article.new(a1,mag1,"Title2")
art3=Article.new(a2,mag1,"Title3")
a1.add_article(mag1,"Title4")
a1.add_article(mag2,"Title5")
a1.add_article(mag3,"Title6")


binding.pry