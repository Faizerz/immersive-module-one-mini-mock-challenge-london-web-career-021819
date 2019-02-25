
class Author

  attr_reader :author

  @@all = []

  def initialize(author)
    @author = author
    @@all << self
  end

  def self.all
    @@all
  end

  def write_book(title, word_count)
    Book.new(self, title, word_count)
  end

  def total_words
    count = 0
    Book.all.select do |book|
      if book.author == self
        count += book.word_count
      end
    end
    count
  end

  def self.most_words
    most_words = 0
    most_author = nil
    Book.all.each do |book|
      if book.word_count > most_words
        most_words = book.word_count
        most_author = book.author
      end
    end
    most_author
  end

end
