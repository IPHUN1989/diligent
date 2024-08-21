export class User {
    constructor() {
        this.books = [];
    }

    borrow(book, library) {
        throw new Error('Not implemented');
    }

    hasBook(book) {
    return this.books.includes(book);
    }

    return(book, library) {
    if (this.books.includes(book)) {
      library.addBook(book);
      let index = this.books.indexOf(book);
      this.books.splice(index, 1);
      return true;
    }
    return false;
    }

    getBookNames() {
    const books = [];
    this.books.map((book) => books.push(book.name));
    return books;
    }
}