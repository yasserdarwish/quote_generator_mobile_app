import 'package:hive_flutter/hive_flutter.dart';

part 'quote_model.g.dart';

@HiveType(typeId: 1)
class QuoteModel extends HiveObject {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String content;
  @HiveField(2)
  final String author;

  QuoteModel({required this.id, required this.content, required this.author});

  factory QuoteModel.fromJson(quote) {
    return QuoteModel(
        id: quote['_id'], content: quote['content'], author: quote['author']);
  }
}
