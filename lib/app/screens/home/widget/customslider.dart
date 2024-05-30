import 'package:flutter/material.dart';

class TopRatedSlider extends StatelessWidget {
  const TopRatedSlider({
    super.key,
    required this.snapshot,
  });

  final snapshot;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: GridView.builder(
        scrollDirection:
            Axis.vertical, // Changed to horizontal for a slider effect
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // One item per row for a slider effect
          childAspectRatio: 1.5, // Adjust aspect ratio to your preference
        ),
        itemCount: snapshot.data!.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                height: 100,
                width: 50,
                color: Colors.red,
              )
            ),
          );
        },
      ),
    );
  }
}
