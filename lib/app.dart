import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:rental_car/di/injection_container.dart';
import 'package:rental_car/presentation/bloc/car_bloc.dart';
import 'package:rental_car/presentation/bloc/car_event.dart';
import 'package:rental_car/presentation/onbording/ui/on_boarding_screen.dart';
import 'package:rental_car/utils/constants/text_strings.dart';
import 'package:rental_car/utils/theme/theme.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<CarBloc>()..add(LoadCars()),
      child: GetMaterialApp(
        title: TTexts.appName,
        themeMode: ThemeMode.system,
        theme: TAppTheme.lightTheme,
        darkTheme: TAppTheme.darkTheme,
        debugShowCheckedModeBanner: false,
        // initialBinding: GeneralBindings(),
        home: const OnBoardingScreen(),
      ),
    );
  }
}
