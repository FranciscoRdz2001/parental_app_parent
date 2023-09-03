import 'package:flutter/material.dart';
import 'package:parental_app_parent/app/utils/app_styles.dart';
import 'package:parental_app_parent/widgets/custom_container_widget.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainerWidget(
      padding: 16,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Hola!', style: AppStyles.w500(18)),
                const SizedBox(height: 4),
                Text(
                  'Francisco',
                  style: AppStyles.w400(24, Colors.grey[600]),
                ),
              ],
            ),
          ),
          const CustomContainerWidget(
            child: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
