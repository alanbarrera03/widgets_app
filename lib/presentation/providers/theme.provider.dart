import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// Estado => isDarkModeProvider = boolean
final isDarkModeProvider = StateProvider( ( ref ) => false );

// Simple int
final selectedColorProvider = StateProvider( ( ref ) => 0 );

//Listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);