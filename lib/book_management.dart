enum BookStatus { available, borrowed }

class Book {
  String _title;
  String _author;
  String _isbn;
  BookStatus _status;

  // Constructor
  Book(this._title, this._author, this._isbn, [this._status = BookStatus.available]) {
    if (!isValidISBN(_isbn)) {
      throw ArgumentError("Invalid ISBN number");
    }
  }

  // Getters
  String get title => _title;
  String get author => _author;
  String get isbn => _isbn;
  BookStatus get status => _status;

  // Setters
  set title(String newTitle) => _title = newTitle;
  set author(String newAuthor) => _author = newAuthor;
  set isbn(String newIsbn) {
    if (isValidISBN(newIsbn)) _isbn = newIsbn;
  }

  // ISBN validation method
  bool isValidISBN(String isbn) {
    return RegExp(r'^\d{10}(\d{3})?$').hasMatch(isbn); // Basic validation
  }

  // Status update method
  void updateStatus(BookStatus newStatus) {
    _status = newStatus;
  }
}

class TextBook extends Book {
  String subjectArea;
  int gradeLevel;

  // Constructor with super call
  TextBook(String title, String author, String isbn, this.subjectArea, this.gradeLevel)
      : super(title, author, isbn);

  // Getters and setters for additional properties
  String get getSubjectArea => subjectArea;
  int get getGradeLevel => gradeLevel;

  set setSubjectArea(String newSubjectArea) => subjectArea = newSubjectArea;
  set setGradeLevel(int newGradeLevel) => gradeLevel = newGradeLevel;
}

class BookManagementSystem {
  List<Book> _books = [];

  // Method to add a new book to collection
  void addBook(Book book) {
    _books.add(book);
  }

  // Method to remove a book from collection
  void removeBook(String isbn) {
    _books.removeWhere((book) => book.isbn == isbn);
  }

  // Method to update book status
  void updateBookStatus(String isbn, BookStatus newStatus) {
    for (var book in _books) {
      if (book.isbn == isbn) {
        book.updateStatus(newStatus);
        break;
      }
    }
  }

  // Search by title
  List<Book> searchByTitle(String title) {
    return _books.where((book) => book.title.toLowerCase().contains(title.toLowerCase())).toList();
  }

  // Search by author
  List<Book> searchByAuthor(String author) {
    return _books.where((book) => book.author.toLowerCase().contains(author.toLowerCase())).toList();
  }

  // Filter by status
  List<Book> filterByStatus(BookStatus status) {
    return _books.where((book) => book.status == status).toList();
  }
}
