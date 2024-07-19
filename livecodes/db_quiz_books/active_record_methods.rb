# 1. Add your favorite author to the DB
Author.create(name: "Trouni")
# OR
author = Author.new(name: "Trouni")
author.save

# 2. Get all authors
Author.all

# 3. Get author with id=8
Author.find(8)
# ❌ Author.find_by(id: 8) # technically works, but use .find if you use the `id`
# ❌ Author.where(id: 8) # returns a collection (array) of a single author
# ❌ Author.find(id: 8) # .find expects to get an `id` not a hash

# 4. Get author with name="Jules Verne", store it in a variable: jules
jules = Author.find_by(name: "Jules Verne")
# ❌ jules = Author.where(name: "Jules Verne") # returns an collection (array)
# ❌ jules = Author.find(name: "Jules Verne")

# 5. Get Jules Verne's books
jules.books # returns a collection (array) of all the books that have Jules Verne's id in `author_id`
# requires the `has_many :books` in the Author model

# 6. Create a new book "20000 Leagues under the Seas", it's missing in DB.
# Store it in a variable: twenty_thousand
twenty_thousand = Book.new(title: "20000 Leagues under the Seas", publishing_year: 1870)

# 7. Add Jules Verne as this book's author
# jules = Author.find_by(name: "Jules Verne")
twenty_thousand.author = jules
❌ twenty_thousand.author = "Jules Verne" # `author` should be an instance of Author
❌ twenty_thousand.author_id = jules.id # you should use the instances instead


# 8. Now save this book in the DB!
twenty_thousand.save
