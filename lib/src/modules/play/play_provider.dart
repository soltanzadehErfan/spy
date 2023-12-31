import 'dart:math';

import 'package:flutter/cupertino.dart';

class PlayProvider extends ChangeNotifier {
  final BuildContext context;

  final List<String> locationsEN = [
    'hospital', 'school', 'park', 'restaurant', 'library', 'mall', 'gym', 'cafe', 'movie theater', 'beach',
    'supermarket', 'office building', 'gas station', 'airport', 'train station', 'bank', 'post office', 'pharmacy',
    'stadium', 'zoo', 'hotel', 'swimming pool', 'amusement park', 'museum', 'coffee shop', 'pub', 'garden',
    'mountain', 'lake', 'river', 'bridge', 'market', 'concert hall', 'university', 'factory', 'skyscraper', 'church',
    'temple', 'mosque', 'synagogue', 'fire station', 'police station', 'courthouse', 'prison', 'farm', 'cemetery',
    'lighthouse', 'windmill', 'waterfall', 'cave', 'volcano', 'desert', 'island', 'space station', 'moon base',
    'underwater city', 'time travel agency', 'wizard tower', 'fairy tale castle', 'alien planet', 'parallel universe',
    'cyberpunk city', 'steampunk airship', 'enchanted forest', 'robot factory', 'virtual reality world',
    'hidden treasure island', 'secret agent headquarters', 'ghost town', 'dinosaurs park', 'chocolate factory',
    'pirate ship', 'magic school', 'unicorn stable', 'dragon cave', 'giant treehouse', 'mermaid lagoon',
    'time machine workshop', 'futuristic city', 'jungle temple', 'submarine city', 'flying car showroom',
    'floating island', 'intergalactic spaceport', 'ancient ruins', 'robotic jungle', 'mystical waterfall',
    'rocket launchpad', 'outer space diner', 'cyberspace cafe', 'flying saucer repair shop',
  ];

  final List<String> locationsFA = [
    'بیمارستان', 'مدرسه', 'پارک', 'رستوران', 'کتابخانه', 'مجموعه خرید', 'ورزشگاه', 'کافه', 'سینما', 'ساحل',
    'فروشگاه', 'ساختمان دفتر', 'پمپ بنزین', 'فرودگاه', 'ایستگاه قطار', 'بانک', 'اداره پست', 'داروخانه', 'استادیوم',
    'باغ وحش', 'هتل', 'استخر شنا', 'پارک تفریحی', 'موزه', 'کافه', 'پاب', 'باغ', 'کوه', 'دریاچه', 'رودخانه', 'پل',
    'بازار', 'سالن کنسرت', 'دانشگاه', 'کارخانه', 'آسمان‌خراش', 'کلیسا', 'معبد', 'مسجد', 'کنیسه', 'ایستگاه آتش نشانی',
    'ایستگاه پلیس', 'دیوار دادگاه', 'زندان', 'مزرعه', 'قبرستان', 'مناره دریا', 'آسیاب باد', 'آبشار', 'غار', 'آتشفشان',
    'کویر', 'جزیره', 'ایستگاه فضایی', 'پایگاه ماه', 'شهر زیرآبی', 'آژانس سفر در زمان', 'برج جادوگر', 'قلعه حکایت',
    'سیاره بیگانه', 'دنیای موازی', 'شهر سایبرپانک', 'هواپیماگرد اسطوره‌ای', 'جنگل جادویی', 'کارخانه ربات',
    'جهان واقعی مجازی', 'جزیره گنج پنهان', 'سرپرستی مخفی ماموریت', 'شهر ارواح', 'پارک دایناسورها', 'کارخانه شکلات',
    'کشتی دزدان دریایی', 'مدرسه جادو', 'خانه جادوگر', 'استبل تک شاخ', 'غار اژدها', 'خانه درختی غول', 'آبگردها',
    'کارگاه ماشین زمان', 'شهر آینده‌نگار', 'معبد جنگل', 'شهر زیردریایی', 'نمایشگاه ماشین پروازی', 'جزیره شناور',
    'فرودگاه فضایی بین‌المللی', 'بازتاب باستانی', 'جنگل رباتیک', 'آبشار اسرارآمیز', 'میدان پرتاب موشک', 'رستوران فضایی',
    'کافه سایبری', 'کارگاه تعمیر فراشته پروازگاه',
  ];

  PlayProvider({
    required this.context,
  });

  String getRandomLocation() {
    final random = Random();
    final randomIndex = random.nextInt(locationsFA.length);
    return locationsFA[randomIndex];
  }
}
