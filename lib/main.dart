import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/servie_locetor.dart';
import 'package:bookly/features/Home/data/repo/home_repo_imp.dart';
import 'package:bookly/features/Home/peresintaion/manager/best_seller_cubit/best_seller_cubit.dart';
import 'package:bookly/features/Home/peresintaion/manager/fearturedbook_cubit/featurred_book_cubit.dart';
import 'package:bookly/features/Home/peresintaion/manager/similar_cubit/simillar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features/splash/splash_view.dart';

void main() {
  setupService();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => FeaturedBookCubit(getIt.get<HomeRepoImp>())
              ..fetchFeaturedBook()),
        BlocProvider(
            create: (context) => BestSellerCubit(getIt.get<HomeRepoImp>())
              ..fetchBestSellerBooks()),
        BlocProvider(
            create: (context) =>
                SimillarBookCubit(homeRepo: getIt.get<HomeRepoImp>()))
      ],
      child: GetMaterialApp(
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
        home: const SplashView(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
