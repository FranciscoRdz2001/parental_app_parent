import 'package:flutter/material.dart';
import 'package:parental_app_parent/app/core/app_constants.dart';
import 'package:parental_app_parent/app/theme/app_theme.dart';
import 'package:parental_app_parent/app/utils/app_styles.dart';
import 'package:parental_app_parent/modules/home/widgets/home_header_widget.dart';
import 'package:parental_app_parent/widgets/custom_container_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        dividerTheme: const DividerThemeData(
          thickness: 0,
          color: Colors.transparent,
        ),
      ),
      child: Scaffold(
        extendBody: true,
        persistentFooterButtons: [
          CustomContainerWidget(
            child: Row(
              children: [
                CustomContainerWidget(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  child: const FlutterLogo(size: 32),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Flutter', style: AppStyles.w700(16)),
                      const SizedBox(height: 8),
                      RichText(
                        text: TextSpan(
                          text: 'Esta en uso ',
                          style: AppStyles.w400(
                            12,
                            AppTheme.secondaryText,
                          ),
                          children: [
                            TextSpan(
                              text: '(hace 2 horas)',
                              style: AppStyles.w500(
                                12,
                                Colors.white,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                CustomContainerWidget(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  child: const Icon(Icons.arrow_forward_ios, size: 16),
                ),
              ],
            ),
          ),
        ],
        body: Padding(
          padding: AppConstants.pagePadding,
          child: SafeArea(
            child: Column(
              children: const [
                HomeHeaderWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
