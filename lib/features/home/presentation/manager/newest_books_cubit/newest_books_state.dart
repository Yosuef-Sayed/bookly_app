part of 'newest_books_cubit.dart';

@immutable
sealed class NewestBooksState {}

class NewestBooksInit extends NewestBooksState {}

class NewestBooksLoading extends NewestBooksState {}

class NewestBooksPaginationLoading extends NewestBooksState {}

class NewestBooksFail extends NewestBooksState {
  final String errorMessage;

  NewestBooksFail(this.errorMessage);
}

class NewestBooksPaginationFail extends NewestBooksState {
  final String errorMessage;

  NewestBooksPaginationFail(this.errorMessage);
}

class NewestBooksSuccess extends NewestBooksState {
  final List<BookEntity> books;

  NewestBooksSuccess(this.books);
}
