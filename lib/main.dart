import 'package:flutter/material.dart';
import 'package:nutritionist_app/app.dart';
import 'package:intl/date_symbol_data_local.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('ru_RU', null);
  runApp(const NutritionistApp());
}

