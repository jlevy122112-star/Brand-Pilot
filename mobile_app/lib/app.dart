import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'core/router/app_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BrandPilotApp extends StatelessWidget {
  const BrandPilotApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProviderScope(
      child: _AppView(),
    );
  }
}

class _AppView extends ConsumerWidget {
  const _AppView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'BrandPilot AI',
      theme: AppTheme.lightTheme,
      routerConfig: router,
    );
  }
}
