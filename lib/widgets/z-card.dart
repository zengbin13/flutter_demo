import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ZCard extends StatelessWidget {
  const ZCard({
    super.key,
    required this.title,
    this.content,
    this.action,
  });

  final String title;
  final Widget? action;
  final Widget? content;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.w),
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.w),
        boxShadow: [
          BoxShadow(
            color: const Color(0x22246ee5),
            offset: const Offset(2, 6),
            blurRadius: 8.w,
          )
        ],
      ),
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 20.w,
                      width: 4.w,
                      margin: EdgeInsets.only(right: 10.w),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(5.w),
                      ),
                    ),
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 18.w,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                action ?? const SizedBox(),
              ],
            ),
          ),
          const Divider(
            color: Color.fromARGB(255, 238, 245, 245),
          ),
          content ??
              const SizedBox(
                height: 100,
              ),
        ],
      ),
    );
  }
}
