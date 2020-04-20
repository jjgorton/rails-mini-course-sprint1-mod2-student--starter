require './book.rb' 

class ComicBook < Book
    def read
        @finished = true
    end
end