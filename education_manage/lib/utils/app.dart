import 'package:dio/dio.dart';
import 'package:education_manage/networking/api/education_manage_api.dart';
import 'package:education_manage/networking/dio/dio_builder.dart';
import 'package:education_manage/networking/reponsitory/user_reponsitory_impl.dart';
import 'package:education_manage/utils/configs.dart';
import 'package:education_manage/utils/log_screen_name.dart';
import 'package:education_manage/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loader_overlay/loader_overlay.dart';
import '../../utils/navigation_service.dart';

class Application extends StatefulWidget {
  factory Application.product({String initialRoute = Routes.loginScreen}) =>
      Application._(initialRoute: initialRoute);

  const Application._({
    Key? key,
    required this.initialRoute,
  }) : super(key: key);

  static const String kApplicationTitle = 'EDUCATION MANAGE';
  static final sRouteObserver = RouteObserver<PageRoute>();
  final String initialRoute;

  @override
  State<StatefulWidget> createState() => ApplicationState();
}

class ApplicationState extends State<Application> {
  late EducationManageApi educationManageApi;

  @override
  void initState() {
    super.initState();
    educationManageApi = EducationManageApi(
      DioBuilder.getInstance(
        options: BaseOptions(baseUrl: Config.baseUrl),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GlobalLoaderOverlay(
      overlayColor: Colors.black.withOpacity(0.8),
      overlayWidgetBuilder: (dynamic progress) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // LoadingWidget(),
            if (progress != null)
              Column(
                children: [
                  const SizedBox(height: 10),
                  Text(
                    progress,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  )
                ],
              )
          ],
        );
      },
      child: MultiRepositoryProvider(
        providers: [
          // RepositoryProvider<ImageRepository>(
          //   create: (context) => ImageRepositoryImpl(aiApi),
          // ),
          RepositoryProvider<UserRepository>(
            create: (context) => UserRepositoryImpl(educationManageApi),
          ),
          // RepositoryProvider<CustomerRepository>(
          //   create: (context) => CustomerRepositoryImpl(ikemenApi),
          // ),
          // RepositoryProvider<DesignRepository>(
          //   create: (context) => DesignRepositoryImpl(aiApi, ikemenApi),
          // ),
          // RepositoryProvider<ShareCarteRepository>(
          //   create: (context) => ShareCarteRepositoryImpl(ikemenApi),
          // ),
          // BlocProvider(
          //   create: (context) => AppEventBloc(),
          // ),
        ],
        child: buildApplication(context),
      ),
    );
  }

  /// Create a new application instance with provided settings
  MaterialApp buildApplication(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // scaffoldMessengerKey: ScaffoldMessengerService.key,
      navigatorKey: NavigationService.navigationKey,
      title: Application.kApplicationTitle,
      // supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: const [
        // AppLocalizations.delegate,
        // RefreshLocalizations.delegate,
        // GlobalMaterialLocalizations.delegate,
        // GlobalWidgetsLocalizations.delegate,
        // GlobalCupertinoLocalizations.delegate,
      ],
      theme: ThemeData(
        // primaryColor: AppColor.sPrimary,
        brightness: Brightness.light,
        // dialogBackgroundColor: AppColor.sDialogBackground,
        // scaffoldBackgroundColor: AppColor.sBackground,
        // pageTransitionsTheme: const PageTransitionsTheme(
        //   builders: <TargetPlatform, PageTransitionsBuilder>{
        //     TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        //     TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        //   },
        // ),
      ),
      initialRoute: widget.initialRoute,
      routes: Routes.routes,
      onGenerateRoute: Routes.onGenerateRoute,
      navigatorObservers: [ScreenNameObserver(), Application.sRouteObserver],
    );
  }
}
