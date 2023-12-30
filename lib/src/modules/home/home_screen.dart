import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spy/src/modules/home/home_provider.dart';
import 'package:wheel_chooser/wheel_chooser.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeProvider(context: context),
      child: const _HomeScreen(),
    );
  }
}

class _HomeScreen extends StatelessWidget {
  const _HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<HomeProvider>();

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              const Text('Player count'),
              const SizedBox(height: 16),
              SizedBox(
                height: 32,
                width: double.maxFinite,
                child: WheelChooser(
                  datas: provider.playerCount,
                  magnification: 1.4,
                  startPosition: 5,
                  onValueChanged: (s) => print(s),
                  horizontal: true,
                ),
              ),
            ],
          ),
          const SizedBox(height: 32),
          Column(
            children: [
              const Text('Spy count'),
              const SizedBox(height: 16),
              SizedBox(
                height: 32,
                width: double.maxFinite,
                child: WheelChooser(
                  datas: provider.spyCount,
                  magnification: 1.4,
                  startPosition: 0,
                  onValueChanged: (s) => print(s),
                  horizontal: true,
                ),
              ),
            ],
          ),
          const SizedBox(height: 32),
          Column(
            children: [
              const Text('Time'),
              const SizedBox(height: 16),
              SizedBox(
                height: 32,
                width: double.maxFinite,
                child: WheelChooser(
                  datas: provider.time,
                  magnification: 1.4,
                  startPosition: 1,
                  onValueChanged: (s) => print(s),
                  horizontal: true,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
