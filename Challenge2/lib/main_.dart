import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Challenge Day 2',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const RootView(),
    );
  }
}

class GameView extends StatefulWidget {
  const GameView({super.key});

  @override
  State<StatefulWidget> createState() => _GameViewState();
}

class _GameViewState extends State<GameView> {
  int score = 0;
  ValueNotifier<double> gaugeValueNotifier = ValueNotifier(0.0);
  Timer? timer;

  @override
  void initState() {
    super.initState();

    gaugeValueNotifier.addListener(() {
      if (gaugeValueNotifier.value <= 0) {
        _resetScore();
        timer?.cancel();
      }
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    gaugeValueNotifier.dispose();
    super.dispose();
  }

  void _startTimer() {
    if (timer?.isActive != true) {
      timer = Timer.periodic(const Duration(milliseconds: 10), (timer) {
        if (gaugeValueNotifier.value > 0) {
          gaugeValueNotifier.value -= 0.015;
        }
      });
    }
  }

  void _onButtonPressed() {
    _startTimer();
    if (gaugeValueNotifier.value < 1) {
      gaugeValueNotifier.value += 0.3;
    }
    if (gaugeValueNotifier.value >= 1) {
      _addScore();
    }
  }

  void _resetScore() {
    setState(() {
      score = 0;
    });
  }

  void _addScore() {
    setState(() {
      score++;
    });
  }

  Widget _gaugeBar() {
    return RotatedBox(
      quarterTurns: -1,
      child: SizedBox(
        width: 300,
        height: 40,
        child: ValueListenableBuilder<double>(
            valueListenable: gaugeValueNotifier,
            builder: (context, value, _) => TweenAnimationBuilder<double>(
                duration: const Duration(milliseconds: 50),
                tween: Tween<double>(begin: 0, end: gaugeValueNotifier.value),
                builder: (context, value, _) => LinearProgressIndicator(
                  value: value,
                  color: Theme.of(context).colorScheme.primary,
                  backgroundColor: Theme.of(context)
                      .colorScheme
                      .primary
                      .withOpacity(0.2),
                ))),
      ),
    );
  }

  Widget _gaugeFillButton() {
    return SizedBox(
      height: 40,
      width: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          padding: const EdgeInsets.all(8),
        ),
        onPressed: _onButtonPressed,
        child: const Icon(Icons.add),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Your Score', style: Theme.of(context).textTheme.headlineMedium),
        Text('$score', style: Theme.of(context).textTheme.headlineLarge),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              children: [
                //Gauge
                _gaugeBar(),
                // Margin
                const SizedBox(height: 16),
                // Button
                _gaugeFillButton(),
                // Margin
                const SizedBox(height: 16),
              ],
            ),
            const SizedBox(
              width: 16,
            )
          ],
        ),
      ],
    );
  }
}

class RootView extends StatelessWidget {
  const RootView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Challenge Day 2'),
      ),
      body: const Center(child: GameView()),
    );
  }
}
