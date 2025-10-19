part of 'featured_books_cubit.dart';

@immutable
sealed class FeaturedBooksState {}

class FeaturedBooksInit extends FeaturedBooksState {}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksSuccess extends FeaturedBooksState {
  final String errorMessage;

  FeaturedBooksSuccess(this.errorMessage);
}

class FeaturedBooksFail extends FeaturedBooksState {
  final List<BookEntity> books;

  FeaturedBooksFail(this.books);
}
