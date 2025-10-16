class BookEntity {
  final String? bookId;
  final String? bookImage;
  final String? bookTitle;
  final String? autherName;
  final num? price;
  final num? rating;
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
