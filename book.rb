
class Book

  @@on_shelf = []
  @@on_loan = []

  def self.create(x,y,z)
    new_book = Book.new(x,y,z)
    @@on_shelf << new_book
  end

  def self.current_due_date
    @due_date = Time.now + 1209600
  end

  def self.overdue_books
    @overdue_books > Time.now
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

  def due_date
  @due_date
  end

  def due_date=(date)
  @due_date=()
  end

  def initialize(book_title, author, isbn)
  @book_title = book_title
  @author = author
  @isbn = isbn
  end

  # def borrow
  #   if @@on_shelf.lent_out?.include?(self)
  #   else
  #     due_date = current_due_date
  #     @@on_shelf.delete(@book_title)
  #     @@on_loan << @book_title
  #   end
  # end


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
    if lent_out?.include? (self)
    else
      @@on_loan.delete(@book_title)
      @@on_shelf << @book_title
      @due_date
    end
  end

  def lent_out?
   @@on_loan.include?(self)
  end
end

sister_outsider = Book.create("Sister Outsider", "Audre Lorde", "9781515905431")
aint_i = Book.create("Ain't I a Woman?", "Bell Hooks", "9780896081307")
if_they_come = Book.create("If They Come in the Morning", "Angela Y. Davis", "0893880221")
puts Book.browse.inspect
puts Book.browse.inspect
puts Book.browse.inspect
puts Book.available.inspect
puts Book.borrowed.inspect
puts sister_outsider.lent_out?
puts sister_outsider.borrow
