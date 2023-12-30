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
    return const Placeholder();
  }
}
