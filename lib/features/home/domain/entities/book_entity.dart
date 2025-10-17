import 'package:hive/hive.dart';
part 'book_entity.g.dart';

@HiveType(typeId: 0)
class BookEntity {
  @HiveField(0)
  final String? bookId;
  @HiveField(1)
  final String? bookImage;
  @HiveField(2)
  final String? bookTitle;
  @HiveField(3)
  final String? autherName;
  @HiveField(4)
  final num? price;
  @HiveField(5)
  final num? rating;
  @HiveField(6)
  final num? ratesCount;

  BookEntity({
    required this.bookId,
    required this.bookImage,
    required this.bookTitle,
    required this.autherName,
    required this.price,
    required this.rating,
    required this.ratesCount,
  });
}
