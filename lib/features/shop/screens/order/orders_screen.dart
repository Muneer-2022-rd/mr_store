import 'package:flutter/material.dart';
import 'package:mr_store/common/widgets/custom_app_bar.dart';
import 'package:mr_store/core/constants/sizes.dart';
import 'package:mr_store/features/shop/screens/order/widgets/order_list_items.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          'Orders',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: OrdersListItems(),
      ),
    );
  }
}
