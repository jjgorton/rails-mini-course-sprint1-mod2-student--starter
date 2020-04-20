module Lendable
    def lend
        if (@count > 0)
            @count -=1
        else
            @count=0
        end
        # puts('this worked')
    end
end


class Book
    include Lendable
    attr_reader :title, :author
    attr_writer :finished
    attr_accessor :count

    def initialize(title, author)
        @title = title
        @author = author
        @finished = false
        @count = 3
    end

    # def title
    #     @title
    # end

    # def author
    #     @author
    # end

    # def finished=(bool)
    #     @finished=bool
    # end

    def finished
        @finished
    end

    # def count
    #     @count
    # end

    def Book.recommended_books
        [
        Book.new("The Well-Grounded Rubyist", "David A. Black"),
        Book.new("Practical Object-Oriented Design in Ruby", "Sandi Metz"),
        Book.new("Effective Testing with RSpec 3", "Myron Marston"),
        ]
    end
end



b = Book.new("The Title", "Me")

puts(b.title, b.author, b.finished, b.count)