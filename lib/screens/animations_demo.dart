import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class AnimationsDemo extends StatelessWidget {
  const AnimationsDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animations Demo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            OpenContainer(
              transitionType: ContainerTransitionType.fade,
              openBuilder: (context, _) => const DetailPage(),
              closedElevation: 0,
              closedShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              closedBuilder: (context, open) => ListTile(
                leading: const Icon(Icons.play_arrow),
                title: const Text('OpenContainer Demo'),
                subtitle: const Text('Tap to open animated container'),
                onTap: open,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showModal(
                  context: context,
                  configuration: const FadeScaleTransitionConfiguration(),
                  builder: (context) => Center(
                    child: Material(
                      elevation: 4,
                      borderRadius: BorderRadius.circular(8),
                      child: const SizedBox(
                        width: 300,
                        height: 200,
                        child: Center(
                          child: Text(
                            'FadeScale Modal',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
              child: const Text('Show FadeScale Modal'),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail')),
      body: const Center(
        child: Text(
          'This is the open container detail page',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
