part of 'quote_cubit.dart';

@immutable
sealed class QuoteState {}

final class QuoteInitial extends QuoteState {}

final class QuoteLoading extends QuoteState {}

final class QuoteSuccess extends QuoteState {}

final class QuoteFailure extends QuoteState {}

final class QuoteFavorite extends QuoteState {}
