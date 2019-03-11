# Puppy class
#   can create a new instance of the puppy class (FAILED - 1)
#   can read a puppy name (FAILED - 2)
#   can read a puppy breed (FAILED - 3)
#   can read a puppy age (puppy#age) (FAILED - 4)
#   can change puppy age (puppy#age=) (FAILED - 5)
#   can change puppy name (FAILED - 6)

# App
#   GET /
#     sends a 200 status code (FAILED - 7)
#     has a link with the text "List A Puppy" (FAILED - 8)
#     has a link to list a puppy that links to /new (FAILED - 9)
#   GET /new
#     sends a 200 status code (FAILED - 10)
#     renders a form that can POST a name, breed, and age (FAILED - 11)
#   POST /puppy
#     sends a 200 status code (FAILED - 12)
#     recieves a request from /new at /puppy (FAILED - 13)
#     displays the puppy information dynamically (FAILED - 14)

class Puppy
attr_accessor :name, :age
attr_reader :breed

    def initialize(name, breed, age)
        self.name = name
        self.age = age
        @breed = breed
    end


end