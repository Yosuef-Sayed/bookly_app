import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/use_cases/use_case.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/repositories/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooksUseCase
    extends UseCase<Either<Failure, List<BookEntity>>, void> {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([void p]) async {
    //* Check Permission
    return await homeRepo.fetchFeaturedBooks();
  }
}
