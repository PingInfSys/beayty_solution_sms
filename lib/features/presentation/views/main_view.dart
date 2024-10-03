import 'dart:html' as html;

import 'package:beauty_salon/core/theme/color_manager.dart';
import 'package:beauty_salon/features/presentation/cubit/partnership_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/main_bady.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

String? idAndPhone;

class _MainViewState extends State<MainView> {
  @override
  void initState() {
    super.initState();
    String hash = html.window.location.hash;
    idAndPhone = hash.split('#/Home/').last;
    BlocProvider.of<PartnershipCubit>(context)
        .getSalonByIdAndPhone(idAndPhone!);
  }

  @override

  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: ColorManager.offWhite,
      body: MainBody(
        idAndPhone: idAndPhone
      ),
    );
  }
}

