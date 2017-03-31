class Book

  #class
  @@on_shelf = []
  @@on_loan  = []
  @@overdue_books = []

  def self.create(title,author,isbn)
    book = Book.new(title, author, isbn)
    @@on_shelf.push(book)
  end

  def self.current_due_date
    Time.now + 60*60*24*7
  end

  def self.overdue_books
    overdue_books = @@on_loan.select {|book| book.due_date > Time.now}
    overdue_books.each {|book| @@overdue_books.push(book.title)}
  end

  def self.browse
    @@on_shelf.shuffle[1]
  end

  def self.available

    @@on_shelf
  end

  def self.borrowed

    return @@on_loan

  end

  def self.update_shelf(shelf)
    @@on_shelf = shelf
  end

  def self.update_loan(loan)
    @@on_loan = loan
  end

  #instance

  attr_accessor :due_date
  attr_reader :title, :author, :isbn

  def initialize(title, author, isbn)

    @title  = title
    @author = author
    @isbn   = isbn
    # @date_borrowed = Time.new
    # @due_date = Time.new
    #@book_keep_dates = 60*60*24*7

  end

  def borrow
    if lent_out?
      return puts "Borrowed"
    else

      bb = Book.available.delete( self )
      Book.update_shelf(Book.available)
      Book.update_loan( Book.borrowed.push(bb) )

    end
  end


  def return_to_library
    if lent_out?
      rb = Book.available.push( self )
      Book.update_shelf(rb)
      Book.update_loan.delete(rb)
      @due_date = ""
    else
      puts "Can't return book not being lent"
    end

  end

  def due_date
    @due_date = Book.current_due_date
  end

  def lent_out?

    if Book.borrowed.include?( self )
    # if Book.borrowed.include?( Book.borrowed.select {|book| book.isbn == @isbn} )
      return true
    else
      return false
    end

  end

end
