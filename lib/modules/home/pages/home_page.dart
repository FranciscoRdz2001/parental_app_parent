import 'package:flutter/material.dart';
import 'package:parental_app_parent/app/core/app_constants.dart';
import 'package:parental_app_parent/app/utils/app_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: AppConstants.pagePadding,
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Hola!', style: AppStyles.w700(32)),
                        Text(
                          'Francisco',
                          style: AppStyles.w700(24, Colors.grey[600]),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    child: const Icon(Icons.person),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
