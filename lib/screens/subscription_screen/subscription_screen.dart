import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:memory_box/widgets/backgrounds/custom_background/custom_background.dart';

class SubscriptionScreen extends StatefulWidget {
  static final String routeName = '/subscription_screen';

  const SubscriptionScreen({super.key});

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      child: Center( child: Text('SUBSCRTIPTIOn'),),
    );
  }
}
