class Book
  @@on_shelf = []
  @@on_loan = []

 def due_date
    @due_date
  end

 def due_date=(due_date)
    due_date = due_date
  end

 def initialize(book_title,author,isbn)
    @book_title = book_title
    @author = author
    @isbn = isbn
    @due_date = 0
  end

 def borrow
    if lent_out?
      puts "The attempt to borrow the book failed."
    else
      @due_date = Book.current_due_date
      puts "Your book will be due on #{@due_date}"
      @@on_loan << self
      @@on_shelf.delete(self)
    end
  end

 def return_to_library
    if lent_out?
      @@on_loan.delete(self)
      @@on_shelf << self
      @due_date = nil
      return true
    else
      return false
    end
  end

 def lent_out?
     @@on_loan.include?(self)
  end

 def self.create(x,y,z)
    new_book = Book.new(x,y,z)
    @@on_shelf << new_book
    return new_book
  end

 def self.current_due_date
  (Time.now + 445000)

 end

 def self.overdue_books
    past_due_books = []
    @@on_loan.each do |value|
      if value.due_date < Time.now
          past_due_books << value
      end
    end
    return past_due_books
  end

 def self.browse
    @@on_shelf.sample
  end

 def self.available
    @@on_shelf
  end

 def self.borrowed
    @@on_loan
  end

 end
