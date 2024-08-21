export class User {
    constructor() {
        this.books = [];
    }

    borrow(book, library) {
        throw new Error('Not implemented');
    }

    hasBook(book) {
        throw new Error('Not implemented');
    }

    return(book, library) {
        throw new Error('Not implemented');
    }

    getBookNames() {
    const books = [];
    this.books.map((book) => books.push(book.name));
    return books;
    }
}