import 'package:get/get.dart';
import '../presentation/splash_screen/splash_screen.dart';
import '../presentation/splash_screen/binding/splash_binding.dart';
import '../presentation/log_in_screen/log_in_screen.dart';
import '../presentation/log_in_screen/binding/log_in_binding.dart';
import '../presentation/sign_up_screen/sign_up_screen.dart';
import '../presentation/sign_up_screen/binding/sign_up_binding.dart';
import '../presentation/forget_passwords_screen/forget_passwords_screen.dart';
import '../presentation/forget_passwords_screen/binding/forget_passwords_binding.dart';
import '../presentation/verification_screen/verification_screen.dart';
import '../presentation/verification_screen/binding/verification_binding.dart';
import '../presentation/reset_password_screen/reset_password_screen.dart';
import '../presentation/reset_password_screen/binding/reset_password_binding.dart';
import '../presentation/subscriptions_screen/subscriptions_screen.dart';
import '../presentation/subscriptions_screen/binding/subscriptions_binding.dart';
import '../presentation/home_container_screen/home_container_screen.dart';
import '../presentation/home_container_screen/binding/home_container_binding.dart';
import '../presentation/voice_ai_screen/voice_ai_screen.dart';
import '../presentation/voice_ai_screen/binding/voice_ai_binding.dart';
import '../presentation/voice_ai_recorder_screen/voice_ai_recorder_screen.dart';
import '../presentation/voice_ai_recorder_screen/binding/voice_ai_recorder_binding.dart';
import '../presentation/voice_type_screen/voice_type_screen.dart';
import '../presentation/voice_type_screen/binding/voice_type_binding.dart';
import '../presentation/text_ai_tab_container_screen/text_ai_tab_container_screen.dart';
import '../presentation/text_ai_tab_container_screen/binding/text_ai_tab_container_binding.dart';
import '../presentation/content_rewrite_screen/content_rewrite_screen.dart';
import '../presentation/content_rewrite_screen/binding/content_rewrite_binding.dart';
import '../presentation/text_ai_product_screen/text_ai_product_screen.dart';
import '../presentation/text_ai_product_screen/binding/text_ai_product_binding.dart';
import '../presentation/product_description_screen/product_description_screen.dart';
import '../presentation/product_description_screen/binding/product_description_binding.dart';
import '../presentation/text_ai_blog_screen/text_ai_blog_screen.dart';
import '../presentation/text_ai_blog_screen/binding/text_ai_blog_binding.dart';
import '../presentation/blog_idea_screen/blog_idea_screen.dart';
import '../presentation/blog_idea_screen/binding/blog_idea_binding.dart';
import '../presentation/video_ai_screen/video_ai_screen.dart';
import '../presentation/video_ai_screen/binding/video_ai_binding.dart';
import '../presentation/video_ai_full_screen/video_ai_full_screen.dart';
import '../presentation/video_ai_full_screen/binding/video_ai_full_binding.dart';
import '../presentation/change_bg_color_screen/change_bg_color_screen.dart';
import '../presentation/change_bg_color_screen/binding/change_bg_color_binding.dart';
import '../presentation/characters_screen/characters_screen.dart';
import '../presentation/characters_screen/binding/characters_binding.dart';
import '../presentation/image_ai_screen/image_ai_screen.dart';
import '../presentation/image_ai_screen/binding/image_ai_binding.dart';
import '../presentation/image_ai_uploaded_screen/image_ai_uploaded_screen.dart';
import '../presentation/image_ai_uploaded_screen/binding/image_ai_uploaded_binding.dart';
import '../presentation/image_converted_screen/image_converted_screen.dart';
import '../presentation/image_converted_screen/binding/image_converted_binding.dart';
import '../presentation/avatar_collection_screen/avatar_collection_screen.dart';
import '../presentation/avatar_collection_screen/binding/avatar_collection_binding.dart';
import '../presentation/explore_screen/explore_screen.dart';
import '../presentation/explore_screen/binding/explore_binding.dart';
import '../presentation/search_screen/search_screen.dart';
import '../presentation/search_screen/binding/search_binding.dart';
import '../presentation/menu_screen/menu_screen.dart';
import '../presentation/menu_screen/binding/menu_binding.dart';
import '../presentation/profile_settings_screen/profile_settings_screen.dart';
import '../presentation/profile_settings_screen/binding/profile_settings_binding.dart';
import '../presentation/my_subscription_screen/my_subscription_screen.dart';
import '../presentation/my_subscription_screen/binding/my_subscription_binding.dart';
import '../presentation/settings_screen/settings_screen.dart';
import '../presentation/settings_screen/binding/settings_binding.dart';
import '../presentation/notification_settings_screen/notification_settings_screen.dart';
import '../presentation/notification_settings_screen/binding/notification_settings_binding.dart';
import '../presentation/language_settings_screen/language_settings_screen.dart';
import '../presentation/language_settings_screen/binding/language_settings_binding.dart';
import '../presentation/terms_condition_screen/terms_condition_screen.dart';
import '../presentation/terms_condition_screen/binding/terms_condition_binding.dart';
import '../presentation/error_screen/error_screen.dart';
import '../presentation/error_screen/binding/error_binding.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/app_navigation_screen/binding/app_navigation_binding.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String logInScreen = '/log_in_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String forgetPasswordsScreen = '/forget_passwords_screen';

  static const String verificationScreen = '/verification_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String subscriptionsScreen = '/subscriptions_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String voiceAiScreen = '/voice_ai_screen';

  static const String voiceAiRecorderScreen = '/voice_ai_recorder_screen';

  static const String voiceTypeScreen = '/voice_type_screen';

  static const String textAiPage = '/text_ai_page';

  static const String textAiTabContainerScreen =
      '/text_ai_tab_container_screen';

  static const String contentRewriteScreen = '/content_rewrite_screen';

  static const String textAiProductScreen = '/text_ai_product_screen';

  static const String productDescriptionScreen = '/product_description_screen';

  static const String textAiBlogScreen = '/text_ai_blog_screen';

  static const String blogIdeaScreen = '/blog_idea_screen';

  static const String videoAiScreen = '/video_ai_screen';

  static const String videoAiFullScreen = '/video_ai_full_screen';

  static const String changeBgColorScreen = '/change_bg_color_screen';

  static const String charactersScreen = '/characters_screen';

  static const String imageAiScreen = '/image_ai_screen';

  static const String imageAiUploadedScreen = '/image_ai_uploaded_screen';

  static const String imageConvertedScreen = '/image_converted_screen';

  static const String avatarCollectionScreen = '/avatar_collection_screen';

  static const String exploreScreen = '/explore_screen';

  static const String searchScreen = '/search_screen';

  static const String menuScreen = '/menu_screen';

  static const String profileSettingsScreen = '/profile_settings_screen';

  static const String mySubscriptionScreen = '/my_subscription_screen';

  static const String settingsScreen = '/settings_screen';

  static const String notificationSettingsScreen =
      '/notification_settings_screen';

  static const String languageSettingsScreen = '/language_settings_screen';

  static const String termsConditionScreen = '/terms_condition_screen';

  static const String errorScreen = '/error_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: logInScreen,
      page: () => LogInScreen(),
      bindings: [
        LogInBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: forgetPasswordsScreen,
      page: () => ForgetPasswordsScreen(),
      bindings: [
        ForgetPasswordsBinding(),
      ],
    ),
    GetPage(
      name: verificationScreen,
      page: () => VerificationScreen(),
      bindings: [
        VerificationBinding(),
      ],
    ),
    GetPage(
      name: resetPasswordScreen,
      page: () => ResetPasswordScreen(),
      bindings: [
        ResetPasswordBinding(),
      ],
    ),
    GetPage(
      name: subscriptionsScreen,
      page: () => SubscriptionsScreen(),
      bindings: [
        SubscriptionsBinding(),
      ],
    ),
    GetPage(
      name: homeContainerScreen,
      page: () => HomeContainerScreen(),
      bindings: [
        HomeContainerBinding(),
      ],
    ),
    GetPage(
      name: voiceAiScreen,
      page: () => VoiceAiScreen(),
      bindings: [
        VoiceAiBinding(),
      ],
    ),
    GetPage(
      name: voiceAiRecorderScreen,
      page: () => VoiceAiRecorderScreen(),
      bindings: [
        VoiceAiRecorderBinding(),
      ],
    ),
    GetPage(
      name: voiceTypeScreen,
      page: () => VoiceTypeScreen(),
      bindings: [
        VoiceTypeBinding(),
      ],
    ),
    GetPage(
      name: textAiTabContainerScreen,
      page: () => TextAiTabContainerScreen(),
      bindings: [
        TextAiTabContainerBinding(),
      ],
    ),
    GetPage(
      name: contentRewriteScreen,
      page: () => ContentRewriteScreen(),
      bindings: [
        ContentRewriteBinding(),
      ],
    ),
    GetPage(
      name: textAiProductScreen,
      page: () => TextAiProductScreen(),
      bindings: [
        TextAiProductBinding(),
      ],
    ),
    GetPage(
      name: productDescriptionScreen,
      page: () => ProductDescriptionScreen(),
      bindings: [
        ProductDescriptionBinding(),
      ],
    ),
    GetPage(
      name: textAiBlogScreen,
      page: () => TextAiBlogScreen(),
      bindings: [
        TextAiBlogBinding(),
      ],
    ),
    GetPage(
      name: blogIdeaScreen,
      page: () => BlogIdeaScreen(),
      bindings: [
        BlogIdeaBinding(),
      ],
    ),
    GetPage(
      name: videoAiScreen,
      page: () => VideoAiScreen(),
      bindings: [
        VideoAiBinding(),
      ],
    ),
    GetPage(
      name: videoAiFullScreen,
      page: () => VideoAiFullScreen(),
      bindings: [
        VideoAiFullBinding(),
      ],
    ),
    GetPage(
      name: changeBgColorScreen,
      page: () => ChangeBgColorScreen(),
      bindings: [
        ChangeBgColorBinding(),
      ],
    ),
    GetPage(
      name: charactersScreen,
      page: () => CharactersScreen(),
      bindings: [
        CharactersBinding(),
      ],
    ),
    GetPage(
      name: imageAiScreen,
      page: () => ImageAiScreen(),
      bindings: [
        ImageAiBinding(),
      ],
    ),
    GetPage(
      name: imageAiUploadedScreen,
      page: () => ImageAiUploadedScreen(),
      bindings: [
        ImageAiUploadedBinding(),
      ],
    ),
    GetPage(
      name: imageConvertedScreen,
      page: () => ImageConvertedScreen(),
      bindings: [
        ImageConvertedBinding(),
      ],
    ),
    GetPage(
      name: avatarCollectionScreen,
      page: () => AvatarCollectionScreen(),
      bindings: [
        AvatarCollectionBinding(),
      ],
    ),
    GetPage(
      name: exploreScreen,
      page: () => ExploreScreen(),
      bindings: [
        ExploreBinding(),
      ],
    ),
    GetPage(
      name: searchScreen,
      page: () => SearchScreen(),
      bindings: [
        SearchBinding(),
      ],
    ),
    GetPage(
      name: menuScreen,
      page: () => MenuScreen(),
      bindings: [
        MenuBinding(),
      ],
    ),
    GetPage(
      name: profileSettingsScreen,
      page: () => ProfileSettingsScreen(),
      bindings: [
        ProfileSettingsBinding(),
      ],
    ),
    GetPage(
      name: mySubscriptionScreen,
      page: () => MySubscriptionScreen(),
      bindings: [
        MySubscriptionBinding(),
      ],
    ),
    GetPage(
      name: settingsScreen,
      page: () => SettingsScreen(),
      bindings: [
        SettingsBinding(),
      ],
    ),
    GetPage(
      name: notificationSettingsScreen,
      page: () => NotificationSettingsScreen(),
      bindings: [
        NotificationSettingsBinding(),
      ],
    ),
    GetPage(
      name: languageSettingsScreen,
      page: () => LanguageSettingsScreen(),
      bindings: [
        LanguageSettingsBinding(),
      ],
    ),
    GetPage(
      name: termsConditionScreen,
      page: () => TermsConditionScreen(),
      bindings: [
        TermsConditionBinding(),
      ],
    ),
    GetPage(
      name: errorScreen,
      page: () => ErrorScreen(),
      bindings: [
        ErrorBinding(),
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
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
