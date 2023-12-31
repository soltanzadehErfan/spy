import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spy/src/modules/play/play_provider.dart';

class PlayScreen extends StatelessWidget {
  const PlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => PlayProvider(context: context),
      child: const _PlayScreen(),
    );
  }
}

class _PlayScreen extends StatelessWidget {
  const _PlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final playProvider = context.watch<PlayProvider>();
    final randomLocation = playProvider.getRandomLocation();

    return Scaffold(
      appBar: AppBar(
        title: const Text('SPY THE GAME'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              randomLocation,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
