import 'package:get/get.dart';

class Messages extends Translations{
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
       'Hello!': 'Hello!',
    },
    'hi_IN': {
       'Hello!': 'नमस्ते!',
    },
    'ta_IN': {
       'Hello!': 'வணக்கம்!',
    },
    'fr_FR': {
       'Hello!': 'Bonjour!',
    },
  };
}