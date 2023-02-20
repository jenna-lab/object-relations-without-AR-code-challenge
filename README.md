# Object Relations without AR : Article Code challenge
### 20-02-2023
## Jennifer Sammy

## Description/introduction
 You will be working with a Magazine domain.

We have three models: Author, Article, and Magazine.

For our purposes, an Author has many Articles, a Magazine has many Articles, and Articles belong to both Author and Magazine.

Author - Magazine is a many to many relationship.

## Setup/Installation Requirements
   - Create a new folder for your project.In the terminal by running mkdir my-project-folder.

   - Change into the project folder by running cd my-project-folder.

   - Initialize a new Git repository by running git init.

   - Create a new file named run.rb. This will be the file from which you run your application.

   - Create a new folder named models. This will be where you store your Ruby classes.

   - Within the model folder, create three files named author.rb, article.rb, and magazine.rb. 

   - Open each file and define the class and its methods according to the requirements outlined in the deliverables.

   - In run.rb, require each of the class files by running require_relative 'model/author', require_relative 'model/article', and require_relative 'model/magazine'.

   - Instantiate some instances of the classes in run.rb and try out the methods you have created to make sure everything is working as expected.
   - And do not forget to require pry in your run.rb file.


## Requirements
Ruby

## BDD/Deliverables
- Create the following classes and their respective methods.

- Setup your application so it runs from a configured run file. 

- Create instances of the classes on the run file and try out the methods you just created.

- Use the notation # for instance methods, and .(dot) for class methods.

- Feel free to build out any helper methods if needed.

 

### Initializers, Readers, and Writers
- Author
Author#initialize(name)
An author is initialized with a name, as a string.
A name cannot be changed after it is initialized.
- Author#name
Returns the name of the author
- Magazine
Magazine#initialize(name, category)
A magazine is initialized with a name as a string and a category as a string
The name and category of the magazine can be changed after being initialized.
 Magazine#name
Returns the name of this magazine
- Magazine#category
Returns the category of this magazine
Magazine.all
Returns an array of all Magazine instances
- Article
Article#initialize(author, magazine, title)
An article is initialized with an author as an Author object, a magazine as a Magazine object, and title as a string.
An article cannot change its author, magazine, or title after it has been initialized.
Article#title
Returns the title for that given article
Article.all
Returns an array of all Article instances
 

### Object Relationship Methods
- Article
Article#author
Returns the author for that given article
Article#magazine
Returns the magazine for that given article
- Author
Author#articles
Returns an array of Article instances the author has written
Author#magazines
Returns a unique array of Magazine instances for which the author has contributed to
- Magazine
Magazine#contributors
Returns an array of Author instances who have written for this magazine
 

### Associations and Aggregate Methods
- Author
Author#add_article(magazine, title)
- Given a magazine (as Magazine instance) and a title (as a string), creates a new Article instance and associates it with that author and that magazine.
Author#topic_areas
Returns a unique array of strings with the categories of the magazines the author has contributed to
- Magazine
Magazine.find_by_name(name)
Given a string of magazine's name, this method returns the first magazine object that matches
Magazine#article_titles
Returns an array strings of the titles of all articles written for that magazine
Magazine#contributing_authors
Returns an array of authors who have written more than 2 articles for the magazine

## Bugs
There are no bugs in the project.

## Support/Contact Details
jensam209@gmail.com

## License
License 'https://github.com/jenna-lab/phase3codechallenge1/blob/main/LICENSE.md' **jennifer sammy.
