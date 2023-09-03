import 'dart:math';

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
              crossAxisAlignment: CrossAxisAlignment.center,
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
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HomeHeaderWidget(),
                  const SizedBox(height: 32),
                  Text(
                    'Ultimas aplicaciones en uso',
                    style: AppStyles.w500(18),
                  ),
                  const SizedBox(height: 16),
                  const CustomContainerWidget(
                    padding: 16,
                    child: Placeholder(
                      fallbackHeight: 120,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text('Aplicaciones registradas', style: AppStyles.w500(18)),
                  const SizedBox(height: 16),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 10,
                    separatorBuilder: (_, __) => const SizedBox(height: 8),
                    itemBuilder: (context, index) {
                      final rndStatus = Random().nextInt(3);
                      final color = rndStatus == 0
                          ? AppTheme.lightGreen
                          : rndStatus == 1
                              ? AppTheme.lightYellow
                              : AppTheme.lightRed;
                      final textColor = rndStatus == 0
                          ? AppTheme.green
                          : rndStatus == 1
                              ? AppTheme.yellow
                              : AppTheme.red;
                      final status = rndStatus == 0
                          ? 'En uso'
                          : rndStatus == 1
                              ? 'En pausa'
                              : 'No disponible';
                      return CustomContainerWidget(
                        child: ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: CustomContainerWidget(
                            color: Theme.of(context).scaffoldBackgroundColor,
                            child: const FlutterLogo(size: 32),
                          ),
                          title: Padding(
                            padding: const EdgeInsets.only(bottom: 4),
                            child: Text(
                              'Aplicación $index',
                              style: AppStyles.w500(14),
                            ),
                          ),
                          subtitle: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  '2 horas',
                                  style: AppStyles.w400(
                                      12, AppTheme.secondaryText),
                                ),
                              ),
                              const SizedBox(width: 16),
                              CustomContainerWidget(
                                radius: 4,
                                padding: 4,
                                color: color,
                                child: Text(
                                  status,
                                  style: AppStyles.w500(
                                    10,
                                    textColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          trailing: CustomContainerWidget(
                            shape: BoxShape.circle,
                            color: Theme.of(context).scaffoldBackgroundColor,
                            child: const Icon(
                              Icons.arrow_forward_ios,
                              size: 12,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
