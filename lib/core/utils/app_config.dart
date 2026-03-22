import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConfig {
  static String get secretKey => dotenv.env['secretkey'] ?? '';
  static String get publishableKey => dotenv.env['stripPublishableKey'] ?? '';
}
