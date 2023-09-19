class QuoteModel {
  final String id;
  final String content;
  final String author;

  QuoteModel({required this.id, required this.content, required this.author});

  factory QuoteModel.fromJson(quote) {
    return QuoteModel(
        id: quote['_id'], content: quote['content'], author: quote['author']);
  }
}
