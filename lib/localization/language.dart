import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          "message": "What is your name",
          "name": "Bunty kumar",
          "translationTitle": "Translation screen",
          "hindi": "Hindi",
          "english": "English",
        },
        'hi_IN': {
          "message": "आपका क्या नाम है",
          "name": "बंटी कुमार",
          "translationTitle": "अनुवाद स्क्रीन",
          "hindi": "हिंदी",
          "english": "अंग्रेज़ी",
        },
      };
}
