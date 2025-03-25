import 'package:flutter/material.dart';

class PriceDetailRow extends StatelessWidget {
  final String title;
  final String value;
  final bool isTotal;

  const PriceDetailRow({
    super.key,
    required this.title,
    required this.value,
    this.isTotal = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
              color: Colors.black,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 16,
              fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
              color: isTotal
                  ? Colors.pink
                  : Colors.black, // استبدال AppColors.pink_color بـ Colors.pink
            ),
          ),
        ],
      ),
    );
  }
}