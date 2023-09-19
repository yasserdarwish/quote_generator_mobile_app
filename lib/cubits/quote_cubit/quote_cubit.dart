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
  bool isTapped = false;
  var quoteBox = Hive.box<QuoteModel>(kQuoteBox);

  getQuote() async {
    emit(QuoteLoading());
    try {
      quote = await QuoteService().getQuote();
      emit(QuoteSuccess());
    } catch (e) {
      emit(QuoteFailure());
      debugPrint(e.toString());
    }
  }

  addToFavorite(QuoteModel quote) async {
    isTapped = !isTapped;
    await quoteBox.add(quote);
    icon = Icons.favorite;

    emit(QuoteFavorite());
  }

  removeFromFavorite(QuoteModel quote) async {
    isTapped = !isTapped;
    await quote.delete();
    icon = Icons.favorite_border;

    emit(QuoteFavorite());
  }

  int getFavoriteCount() {
    return quoteBox.length;
  }
}
