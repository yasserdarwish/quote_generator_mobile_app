import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quote_generator_mobile_app/models/quote_model.dart';
import 'package:quote_generator_mobile_app/services/quote_service.dart';

part 'quote_state.dart';

class QuoteCubit extends Cubit<QuoteState> {
  QuoteCubit() : super(QuoteInitial());
  QuoteModel? quote;
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
}
