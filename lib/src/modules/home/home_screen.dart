import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:spy/src/modules/home/home_provider.dart';
import 'package:wheel_chooser/wheel_chooser.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeProvider(context: context),
      child: const _HomeScreen(),
    );
  }
}

class _HomeScreen extends StatelessWidget {
  const _HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<HomeProvider>();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'SPY THE GAME',
            style: TextStyle(fontSize: 20, letterSpacing: 12, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 64),
          _buildWheelChooser('Player count', provider.playerCount, 5),
          const SizedBox(height: 32),
          _buildWheelChooser('Spy count', provider.spyCount, 0),
          const SizedBox(height: 32),
          _buildWheelChooser('Time', provider.time, 1),
          const SizedBox(height: 64),
          SizedBox(
              width: MediaQuery.of(context).size.width / 3,
              child: ElevatedButton(onPressed: () => context.go('/play_screen'), child: const Text('Play'))),
        ],
      ),
    );
  }

  Widget _buildWheelChooser(String label, List<int> datas, int startPosition) {
    return Column(
      children: [
        Text(label),
        const SizedBox(height: 16),
        SizedBox(
          height: 32,
          width: double.maxFinite,
          child: WheelChooser(
            datas: datas,
            magnification: 1.4,
            startPosition: startPosition,
            onValueChanged: (s) => print(s),
            horizontal: true,
          ),
        ),
      ],
    );
  }
}
