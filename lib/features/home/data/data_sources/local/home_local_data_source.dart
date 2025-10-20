import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchFeaturedBooks({int pageNumber = 0});
  List<BookEntity> fetchNewestBooks({int pageNumber = 0});
}

class HomeLocalDataSourceImplementation extends HomeLocalDataSource {
  @override
  List<BookEntity> fetchFeaturedBooks({int pageNumber = 0}) {
    int startPoint = pageNumber * 10;
    int endPoint = (pageNumber + 1) * 10;
    var box = Hive.box<BookEntity>(kFeaturedBox);
    int length = box.values.length;
    if (startPoint >= length || endPoint > length) {
      return [];
    } else {
      return box.values.toList().sublist(startPoint, endPoint);
    }
  }

  @override
  List<BookEntity> fetchNewestBooks({int pageNumber = 0}) {
    int startPoint = pageNumber * 10;
    int endPoint = (pageNumber + 1) * 10;
    var box = Hive.box<BookEntity>(kNewestBox);
    int length = box.values.length;
    if (startPoint >= length || endPoint > length) {
      return [];
    } else {
      return box.values.toList().sublist(startPoint, endPoint);
    }
  }
}
