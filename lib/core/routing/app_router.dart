import 'package:beauty_salon/core/routing/routes.dart';
import 'package:beauty_salon/features/presentation/cubit/partnership_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'dart:html' as html;
import '../../features/presentation/views/main_view.dart';

final appRouter = GoRouter(initialLocation: '${Routes.mainPage}/:id', routes: [
  GoRoute(
    path: '${Routes.mainPage}/:id',
    builder: (context, state) {
      html.document.title = "Sms Page";
      return BlocProvider(
        create: (context) => PartnershipCubit(),
        child: const MainView(),
      );
    },
  ),
]);
