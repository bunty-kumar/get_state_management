import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "en_Us": {
          "email_hint": "Enter email",
          'internet_exception':
              "We're unable tp show results.\nPlease check your data\nconnection.",
          'general_exception':
              "We're unable to process your request.\n Please try again",
          'welcome_back': 'Welcome\nBack',
          'login': 'Login',
          'password_hint': 'Password',
        },
        "hi_IN": {
          "email_hint": "ईमेल दर्ज करें",
          'internet_exception':
              "हम परिणाम दिखाने में असमर्थ हैं।\nकृपया अपना डेटा\nकनेक्शन जांचें।",
          'general_exception':
              "हम आपके अनुरोध को संसाधित करने में असमर्थ हैं।\nकृपया पुनः प्रयास करें",
          'welcome_back': 'वापसी पर\nस्वागत है',
          'login': 'लॉग इन करें',
          'password_hint': 'पासवर्ड',
        },
      };
}
