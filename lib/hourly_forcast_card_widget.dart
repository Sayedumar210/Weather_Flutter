import 'package:flutter/material.dart';

class HourlyForcastCard extends StatelessWidget {
  final String time;
  final IconData icon;
  final String temperature;
  const HourlyForcastCard(
      {super.key,
      required this.icon,
      required this.time,
      required this.temperature});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              time,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Icon(
              icon,
              size: 32,
            ),
            Text(temperature)
          ],
        ),
      ),
    );
  }
}
