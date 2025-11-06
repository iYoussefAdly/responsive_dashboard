import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/range_options.dart';

class IncomeHeaderSection extends StatelessWidget {
  const IncomeHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Income",style: AppStyles.styleSemiBold20,),
        Spacer(),
        RangeOptions()
      ],
    );
  }
}