import 'package:flutter/material.dart';

class DiscoverCell extends StatelessWidget {
  const DiscoverCell({
    super.key,
    required this.title,
    this.prefix,
    this.onTap,
  });

  final String title;
  final Widget? prefix;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          margin: const EdgeInsets.symmetric(vertical: 1),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Visibility(
                    visible: prefix != null,
                    child: ConstrainedBox(
                      constraints:
                          const BoxConstraints.tightFor(width: 30, height: 30),
                      child: prefix,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              const Icon(
                Icons.chevron_right_rounded,
                color: Color(0xffa8a8a8),
              )
            ],
          ),
        ),
      ),
    );
  }
}
