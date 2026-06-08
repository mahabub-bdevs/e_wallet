import 'package:flutter/material.dart';

class CustomNumericKeypad extends StatelessWidget {
  final Function(String) onKeyPressed;
  final VoidCallback onDeletePressed;

  const CustomNumericKeypad({
    super.key,
    required this.onKeyPressed,
    required this.onDeletePressed,
  });

  @override
  Widget build(BuildContext context) {
    final keys = <List<String>>[
      ['1', '2', '3'],
      ['4', '5', '6'],
      ['7', '8', '9'],
      ['.', '0', 'backspace'],
    ];

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: keys.map((row) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: row.map((key) {
                return Expanded(
                  child: _buildKeyButton(key),
                );
              }).toList(),
            ),
          );
        }).toList(),
      ),
    );
  }


  Widget _buildKeyButton(String key) {
    if (key.isEmpty) {
      return const SizedBox.shrink();
    }

    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        if (key == 'backspace') {
          onDeletePressed();
        } else {
          onKeyPressed(key);
        }
      },
      child: Container(
        height: 50,
        alignment: Alignment.center,
        child: key == 'backspace'
            ? Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.grey[600],
          size: 22,
        )
            : Text(
          key,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w400,
            color: Colors.grey[700],
          ),
        ),
      ),
    );
  }
}