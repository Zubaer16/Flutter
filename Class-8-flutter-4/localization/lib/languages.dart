import 'package:get/get.dart';
import 'package:localization/languages/ban.dart';
import 'package:localization/languages/eng.dart';

class Languages extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {'en_US': eng, 'bn_BD': ban};
}
