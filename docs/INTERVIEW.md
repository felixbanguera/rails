### Explain what is Ruby on Rails?
Ruby is a Object oriented programming language, based on Python and Perl.
Ruby on Rails is a Framework for web development that use Ruby as base programming language, but that can use other tools installing gems.

### What is a class in Ruby
In ruby a class is an object of class Class. However in OOP it can be consider as a blueprint or a guide for creating objects.

### What are the naming conventions in Rails
Rails enforce convention over configuration, so convention is very important.
Variables -> lowercase_snake_case
Constant -> UPPERCASE
Clases/Models -> CapitalCaseSingularClass
Modules -> CapitalCaseSingularModule
Methods -> lowercase_snake_case
Controllers -> CapitalCasePluralsController
Partials file names -> _ lowercase_snakecase_init_with_low_dash.

### What's Yield in Ruby on Rails
Yield is a reserved word for a method used whenever a code block is gonna be passed as argument. An example is the 
`<% yield%>` tag in application.html.erb which yields the view of the page that's navigated.

### Explain what is ORM (Object-Relationship-Model) in Rails?
The ORM is a programming technique included in Rails that maps tables with models, making it easy to access to a database modeling the data. In Rails, Models (as classes) are mapped to Tables and Model.instances (objects) are table records.

### Mention what the difference is between false and nil in Ruby?
false is a Boolean DataType, while nil is an object of the same class  *** Not very wellexplained ***

### Mention what are the positive aspects of Rails?
- Keep things simple with gems and bundler.
- Meta-programming: Rails uses code generation but for heavy lifting it relies on meta-programming. Ruby is considered as one of the best language for Meta-programming.
- Active Record: It saves object to the database through Active Record Framework. The Rails version of Active Record identifies the column in a schema and automatically binds them to your domain objects using metaprogramming
- Scaffolding: Rails have an ability to create scaffolding or temporary code automatically
- Convention over configuration: Unlike other development framework, Rails does not require much configuration, if you follow the naming convention carefully
- Three environments: Rails comes with three default environment testing, development, and production.
- Built-in-testing: It supports code called harness and fixtures that make test cases to write and execute.
- Helpers: Rails provide helper methods to be used on templates  while using erb files.

### Explain what is the role of sub-directory app/controllers and app/helpers?
- app/controllers contain the files that Rails will look for controller classes. Controllers are the bridge for the view to communicate with models.
- app/helpers contain helper functionality to be used throughout the app.

### Mention what is the difference between String and Symbol?
Symbol is a Ruby very like string and has it's own methods and behavior. Symbols are considered to be inmutable while a string is a mutable object.

### Explain how Symbol is different from variables?
Variables point to data with different dataTypes. Symbol is a dataType, similar to a string.

### Explain what is Rails Active Record in Ruby on Rails?
ActiveRecord is RoR's ORM's base class. Is the class from which models will inherit and that makes connection to database schemas and records. It follows the standard ORM model as
- Table map to classes
- Rows map to objects
- Columns map to object attributes

### Explain how Rails implements Ajax?
Rails triggers an Ajax Operation in following ways:

- Some trigger fires: The trigger could be a user clicking on a link or button, the users inducing changes to the data in the field or on a form
- Web client calls the server: A Java-script method, XMLHttpRequest, sends data linked with the trigger to an action handler on the server. The data might be the ID of a checkbox, the whole form or the text in the entry field
- Server does process: The server side action handler does something with the data and retrieves an HTML fragment to the web client
- Client receives the response: The client side JavaScript, which Rails generates automatically, receives the HTML fragment and uses it to update a particular part of the current

### Mention how you can create a controller for subject?
`> rails g controller subject`

### Mention what is Rails Migration?
A rails migration is the process from which a table in the app database is created, updated or dropped.

### List out what can Rails Migration do?
- Create table
- drop table
- rename table
- add column
- rename column
- modify column
- delete column
- set default values

### Mention what is the command to create a migration?
rails g migration the_description_to_table 

### Explain when self.up and self.down method is used?
self.up and self.down are used to separate changes in a table. up is used for changes to be done, down for changes to be removed. The idea is that when rolling back, this steps will be opposite.

### Mention what is the role of Rails Controller?
The Rails controller is the logical center of the application. It faciliates the interaction between the users, views, and the model. It also performs other activities like:
- It is capable of routing external requests to internal actions. It handles URL extremely well
- It regulates helper modules, which extend the capabilities of the view templates without bulking of their code
- It regulates sessions; that gives users the impression of an ongoing interaction with our applications

### Mention what is the difference between Active support’s “HashWithIndifferent” and Ruby’s “Hash” ?
The Hash class in Ruby’s core library returns value by using a standard “= =” comparison on the keys. It means that the value stored for a symbol key cannot be retrieved using the equivalent string. While the HashWithIndifferentAccess treats Symbol keys and String keys as equivalent.

### Explain what is Cross-Site Request Forgery (CSRF) and how Rails is protected against it?
CSRF is a form of attack where hacker submits a page request on your behalf to a different website, causing damage or revealing your sensitive data. To protect from CSRF attacks, you have to add “protect_from_forgery” to your ApplicationController. This will cause Rails to require a CSRF token to process the request. CSRF token is given as a hidden field in every form created using Rails form builders.

### Explain what is Mixin in Rails?


### Explain how you define Instance Variable, Global Variable and Class Variable in Ruby?



### Explain how you can run Rails application without creating databases?


### Mention what is the difference between the Observers and Callbacks in Ruby on Rails?


### Explain what is rake in Rails?


### Explain how you can list all routes for an application?
`Rails routes`

### Mention the log that has to be seen to report errors in Ruby Rails?
log/development.log file

### Explain what is the difference between Dynamic and Static Scaffolding?

### Mention what is the function of garbage collection in Ruby on Rails?

### Mention what is the difference between redirect and render in Ruby on Rails?
redirect method tells the browser to execute a new request, render returns data either html or json

### Mention what is the purpose of RJs in Rails?


### Explain what is Polymorphic Association in Ruby on Rails?


### Mention what are the limits of Ruby on Rails?
Ruby on Rails has been designed for creating a CRUD web application using MVC. This might make Rails not useful for other programmers. Some of the features that Rails does not support include

- Foreign key in databases
- Linking to multiple data-base at once
- Soap web services
- Connection to multiple data-base servers at once

### Mention what is the difference between calling super() and super call?
- super(): A call to super() invokes the parent method without any arguments, as presumably expected. As always, being explicit in your code is a good thing.
- super call: A call to super invokes the parent method with the same arguments that were passed to the child method. An error will therefore occur if the arguments passed to the child method don’t match what the parent is expecting

### Explain about Dig, Float and Max?
- Float class is used whenever the function changes constantly.
- Dig is used whenever you want to represent a float in decimal digits.
- Max is used whenever there is a huge need of Float.

### Explain how can we define Ruby regular expressions?
Ruby regular expression is a special sequence of characters that helps you match or find other strings. A regular expression literal is a pattern between arbitrary delimiters or slashes followed by %r

### Explain what is the defined operator?


### List out the few features of Ruby?
- Free format – You can start writing from program from any line and column
- Case sensitive – The uppercase and lowercase letters are distinct
- Comments – Anything followed by an unquoted #, to the end of the line on which it appears, is ignored by the interpreter
- Statement delimiters- Multiple statements on one line must be separated by semicolons, but they are not required at the end of a line.

### Mention the types of variables available in Ruby Class?
Types of variables available in Ruby Class are:
- Local Variables
- Global Variables
- Class Variables
- Instance Variables

### Explain how can you declare a block in Ruby?
In Ruby, the code in the block is always enclosed within braces ({}).  You can invoke a block by using “yield statement”.
```
def print_once
  yield
end

print_once { puts "Block is being run" }
```

### Explain what is the difference between puts and putc statement?
puts print string, putc prints character, either the first char of a string or if it's numeric the string representation of it.

### Explain what is a class library in Ruby?
Ruby class libraries consist of a variety of domains, such as thread programming, data types, various domains, etc. These classes give flexible capabilities at a high level of abstraction, giving you the ability to create powerful Ruby scripts useful in a variety of problem domains. The following domains which have relevant class libraries are,

- GUI programming
- Network programming
- CGI Programming
- Text processing

### Mention what is the difference in scope for these two variables: @@name and @name?
- @@name is a class variable
- @name is an instance variable

### In Ruby code, often it is observed that coder uses a short hand form of using an expression like array.map(&:method_name) instead of array.map { |element| element.method_name }. How this trick actually works?
When a parameter is passed with “&” in front of it. Ruby will call to_proc on it in an attempt to make it usable as a block.  So, symbol to_Proc will invoke the method of the corresponding name on whatever is passed to it. Thus helping our shorthand trick to work.

### Explain what is Interpolation in Ruby?
Ruby Interpolation is the process of inserting a string into a literal.  By placing a Hash (#) within {} open and close brackets, one can interpolate a string into the literal

### Mention what is the difference between Procs and Blocks?
- Block is just the part of the syntax of a method while proc has the characteristics of a block
- Procs are objects, blocks are not
- At most one block can appear in an argument list
- Only block is not able to be stored into a variable while Proc can

### Mention what is the difference between a single quote and double quote?
A single-quoted strings don’t process ASCII escape codes, and they don’t do string interpolation.

### Mention what is the difference between a gem and a plugin in Ruby?

- Gem: A gem is a just ruby code. It is installed on a machine, and it’s available for all ruby applications running on that machine.
- Plugin: Plugin is also ruby code, but it is installed in the application folder and only available for that specific application.

### Mention what is the difference extend and include?
The “include” makes the module’s methods available to the instance of a class, while “extend” makes these methods available to the class itself.







