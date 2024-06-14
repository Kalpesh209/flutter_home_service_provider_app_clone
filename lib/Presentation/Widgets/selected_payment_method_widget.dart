import 'package:flutter/material.dart';
import 'package:flutter_home_service_provider_app_clone/AppUtils/app_images.dart';
import 'package:flutter_home_service_provider_app_clone/AppUtils/app_strings.dart';
import 'package:flutter_home_service_provider_app_clone/Presentation/Widgets/payment_method_option_widget.dart';

class SelectedPaymentMethodWidget extends StatefulWidget {
  const SelectedPaymentMethodWidget({super.key});

  @override
  State<SelectedPaymentMethodWidget> createState() =>
      _SelectedPaymentMethodState();
}

class _SelectedPaymentMethodState extends State<SelectedPaymentMethodWidget> {
  String _selectedPaymentMethod = AppStrings.easyPaisa;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          AppStrings.selectPaymentMethod,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: Colors.black54,
          ),
        ),
        const SizedBox(height: 12),
        PaymentMethodOptionWidget(
          title: AppStrings.easyPaisa,
          imageUrl: AppImages.easypaisaImg,
          isSelected: _selectedPaymentMethod == AppStrings.easyPaisa,
          onTap: () {
            setState(() {
              _selectedPaymentMethod = AppStrings.easyPaisa;
            });
          },
        ),
        PaymentMethodOptionWidget(
          title: AppStrings.bankAccount,
          imageUrl: AppImages.bankAccountImg,
          isSelected: _selectedPaymentMethod == AppStrings.bankAccount,
          onTap: () {
            setState(() {
              _selectedPaymentMethod = AppStrings.bankAccount;
            });
          },
        ),
        PaymentMethodOptionWidget(
          title: AppStrings.jazzCash,
          imageUrl: AppImages.jazzcashImg,
          isSelected: _selectedPaymentMethod == AppStrings.jazzCash,
          onTap: () {
            setState(() {
              _selectedPaymentMethod = AppStrings.jazzCash;
            });
          },
        ),
        PaymentMethodOptionWidget(
          title: AppStrings.payPal,
          imageUrl: AppImages.paypalImg,
          isSelected: _selectedPaymentMethod == AppStrings.payPal,
          onTap: () {
            setState(() {
              _selectedPaymentMethod = AppStrings.payPal;
            });
          },
        ),
      ],
    );
  }
}
