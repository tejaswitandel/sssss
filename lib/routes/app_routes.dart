import 'package:tejaswi_s_application68/presentation/drag_and_drop_screen/drag_and_drop_screen.dart';
import 'package:tejaswi_s_application68/presentation/drag_and_drop_screen/binding/drag_and_drop_binding.dart';
import 'package:tejaswi_s_application68/presentation/group_video_call_screen/group_video_call_screen.dart';
import 'package:tejaswi_s_application68/presentation/group_video_call_screen/binding/group_video_call_binding.dart';
import 'package:tejaswi_s_application68/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:tejaswi_s_application68/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String dragAndDropScreen = '/drag_and_drop_screen';

  static const String groupVideoCallScreen = '/group_video_call_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: dragAndDropScreen,
      page: () => DragAndDropScreen(),
      bindings: [
        DragAndDropBinding(),
      ],
    ),
    GetPage(
      name: groupVideoCallScreen,
      page: () => GroupVideoCallScreen(),
      bindings: [
        GroupVideoCallBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => DragAndDropScreen(),
      bindings: [
        DragAndDropBinding(),
      ],
    )
  ];
}
