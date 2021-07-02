import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InChatHeader extends StatelessWidget {
  final String name;

  const InChatHeader({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      width: double.maxFinite,
      height: 80,
      child: Row(
        children: [
          IconButton(
            onPressed: () => Get.back(),
            icon: Icon(Icons.arrow_back_ios_new),
          ),
          ClipOval(
            child: Container(
              width: 50,
              height: 50,
              color: Colors.blue,
            ),
          ),
          SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                'Online now',
                style: TextStyle(color: Colors.blue),
              ),
            ],
          ),
        ],
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade300),
        ),
      ),
    );
  }
}
