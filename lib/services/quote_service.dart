import 'package:dio/dio.dart';
import 'package:quote_generator_mobile_app/models/quote_model.dart';

class QuoteService {
  Future<QuoteModel> getQuote() async {
    Response response =
        await Dio().get('https://api.quotable.io/quotes/random');
    dynamic quote = response.data[0];
    return QuoteModel.fromJson(quote);
  }
}
