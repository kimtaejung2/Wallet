import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;
  final double offsetX, offsetY;

  final _blackColor = const Color(0xff1f2123);
  final _whiteColor = Colors.white;

  const new({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInverted,
    required this.offsetX,
    required this.offsetY,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(offsetX, offsetY),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: isInverted ? _whiteColor : _blackColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: isInverted ? _blackColor : _whiteColor,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                          color: isInverted ? _blackColor : _whiteColor,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        code,
                        style: TextStyle(
                          color: isInverted
                              ? _blackColor.withValues(alpha: 0.5)
                              : _whiteColor.withValues(alpha: 0.8),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Transform.translate(
                offset: Offset(-5, 20),
                child: Transform.scale(
                  scale: 2.2,
                  child: Icon(
                    icon,
                    color: isInverted ? _blackColor : _whiteColor,
                    size: 88,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
