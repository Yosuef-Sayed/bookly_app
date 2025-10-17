import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/data/data_sources/remote/home_local_data_source.dart';
import 'package:bookly/features/home/data/data_sources/remote/home_remote_data_source.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/repositories/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplementation extends HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepoImplementation({
    required this.homeRemoteDataSource,
    required this.homeLocalDataSource,
  });
  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() async {
    try {
      var localBooks = homeLocalDataSource.fetchFeaturedBooks();
      if (localBooks.isNotEmpty) return right(localBooks);
      var books = await homeRemoteDataSource.fetchFeaturedBooks();
      return right(books);
    } catch (e) {
      return left(Failure());
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks() async {
    try {
      var localBooks = homeLocalDataSource.fetchNewestBooks();
      if (localBooks.isNotEmpty) return right(localBooks);
      var books = await homeRemoteDataSource.fetchNewestBooks();
      return right(books);
    } catch (e) {
      return left(Failure());
    }
  }
}
