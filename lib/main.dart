import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:quote_generator_mobile_app/constants/strings.dart';
import 'package:quote_generator_mobile_app/cubits/quote_cubit/quote_cubit.dart';
import 'package:quote_generator_mobile_app/models/quote_model.dart';
import 'package:quote_generator_mobile_app/views/home_view.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(QuoteModelAdapter());
  await Hive.openBox<QuoteModel>(kQuoteBox);
  runApp(const QuoteGeneratorApp());
}

class QuoteGeneratorApp extends StatelessWidget {
  const QuoteGeneratorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QuoteCubit()..getQuote(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'GemunuLibre'),
        home: const HomeView(),
      ),
    );
  }
}
