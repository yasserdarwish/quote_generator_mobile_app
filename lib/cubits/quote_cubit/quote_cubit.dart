import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:quote_generator_mobile_app/constants/strings.dart';
import 'package:quote_generator_mobile_app/models/quote_model.dart';
import 'package:quote_generator_mobile_app/services/quote_service.dart';

part 'quote_state.dart';

class QuoteCubit extends Cubit<QuoteState> {
  QuoteCubit() : super(QuoteInitial());

  QuoteModel? quote;
  IconData icon = Icons.favorite_border;
  var quoteBox = Hive.box<QuoteModel>(kQuoteBox);
  List<QuoteModel> searchedList = [];

  getQuote() async {
    emit(QuoteLoading());

    try {
      quote = await QuoteService().getQuote();
      changeIcon();
      emit(QuoteSuccess());
    } catch (e) {
      emit(QuoteFailure());
      debugPrint(e.toString());
    }
  }

  changeIcon() {
    icon = isThere() ? Icons.favorite : Icons.favorite_border;
  }

  bool isThere() {
    return quoteBox.values.any((element) => element.id == quote?.id);
  }

  addToFavorite(QuoteModel quote) async {
    await quoteBox.add(quote);
    changeIcon();
    searchedList = quoteBox.values.toList();

    emit(QuoteFavorite());
  }

  favoriteQuoteList() {
    searchedList = quoteBox.values.toList();
  }

  unFavorite(QuoteModel quote) async {
    await quote.delete();
    changeIcon();
    searchedList = quoteBox.values.toList();
    emit(QuoteFavorite());
  }

  int getFavoriteCount() {
    return quoteBox.length;
  }

  void filterSearchResults(String query) {
    searchedList = quoteBox.values
        .where((element) =>
            element.content.toLowerCase().contains(query.toLowerCase()))
        .toList();
    emit(QuoteFavorite());
  }
}
