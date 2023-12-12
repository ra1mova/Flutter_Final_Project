import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../../../../../core/constant/images.dart';
import '../../../../../data/models/user/delivery_info_model.dart';
import '../../../../../domain/entities/user/delivery_info.dart';
import '../../../../blocs/delivery_info/delivery_info_action/delivery_info_action_cubit.dart';
import '../../../../blocs/delivery_info/delivery_info_fetch/delivery_info_fetch_cubit.dart';
import '../../../../widgets/delivery_info_card.dart';
import '../../../../widgets/input_form_button.dart';
import '../../../../widgets/input_text_form_field.dart';

class DeliveryInfoView extends StatefulWidget {
  const DeliveryInfoView({Key? key}) : super(key: key);

  @override
  State<DeliveryInfoView> createState() => _DeliveryInfoViewState();
}

class _DeliveryInfoViewState extends State<DeliveryInfoView> {
  @override
  Widget build(BuildContext context) {
    _showLoadingOrErrorSnackbar(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Delivery Details"),
      ),
      body: _buildDeliveryInfoList(context),
      floatingActionButton: _buildAddButton(context),
    );
  }
}

