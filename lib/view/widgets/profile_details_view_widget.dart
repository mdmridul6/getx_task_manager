import 'package:flutter/material.dart';
import 'package:getx_task_manager/utils/app_color.dart';

class ProfileDetailsViewWidget extends StatelessWidget {
  const ProfileDetailsViewWidget({
    super.key,
    required this.header,
    required this.info,
  });

  final String? header;
  final String? info;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          header!,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        Container(
          width: double.maxFinite,
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: AppColor.editTextBg,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            info!,
            style: const TextStyle(
              color: AppColor.textColorPrimary,
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
