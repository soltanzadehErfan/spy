import 'package:flutter/cupertino.dart';

class HomeProvider extends ChangeNotifier {
  final BuildContext context;
  List<int> playerCount = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
  List<int> spyCount = [1, 2, 3, 4, 5];
  List<int> time = [5, 10, 15, 20, 25, 30];

  HomeProvider({
    required this.context,
  });
}
