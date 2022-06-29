import 'package:get/get.dart';
import 'package:myfirstapp/languages/ban.dart';
import 'package:myfirstapp/languages/eng.dart';

class Languages extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {'en_US': eng, 'bn_BD': ban};
}
