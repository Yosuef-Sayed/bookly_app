part of 'featured_books_cubit.dart';

@immutable
sealed class FeaturedBooksState {}

class FeaturedBooksInit extends FeaturedBooksState {}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksPaginationLoading extends FeaturedBooksState {}

class FeaturedBooksFail extends FeaturedBooksState {
  final String errorMessage;

  FeaturedBooksFail(this.errorMessage);
}

class FeaturedBooksPaginationFail extends FeaturedBooksState {
  final String errorMessage;

  FeaturedBooksPaginationFail(this.errorMessage);
}

class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookEntity> books;

  FeaturedBooksSuccess(this.books);
}
