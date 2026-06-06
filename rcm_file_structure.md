lib/
├── 📁 config/
│   ├── palette.dart          # Colors
│   ├── theme.dart            # ThemeData
│   ├── constants.dart        # App constants
│   └── routes.dart           # Route definitions
│
├── 📁 core/
│   ├── 📁 extensions/
│   │   ├── string_extension.dart
│   │   ├── num_extension.dart
│   │   ├── context_extension.dart
│   │   └── date_extension.dart
│   ├── 📁 utils/
│   │   ├── validators.dart
│   │   ├── formatters.dart
│   │   └── logger.dart
│   ├── 📁 widgets/        # Reusable UI components
│   │   ├── app_button.dart
│   │   ├── app_text_field.dart
│   │   ├── macro_bar.dart
│   │   ├── sync_card.dart
│   │   ├── stepper_indicator.dart
│   │   ├── app_scaffold.dart
│   │   └── widgets.dart
│   └── 📁 errors/
│       ├── exceptions.dart
│       └── failures.dart
│
├── 📁 data/
│   ├── 📁 datasources/
│   │   ├── local_datasource.dart      # SharedPreferences, Hive
│   │   └── remote_datasource.dart     # API calls
│   ├── 📁 models/
│   │   ├── user_model.dart
│   │   ├── food_model.dart
│   │   ├── macros_model.dart
│   │   ├── daily_stats_model.dart
│   │   └── onboarding_model.dart
│   ├── 📁 repositories/
│   │   ├── auth_repository.dart
│   │   ├── food_repository.dart
│   │   ├── user_repository.dart
│   │   └── health_repository.dart
│   └── 📁 services/
│       ├── api_service.dart           # HTTP client (Dio)
│       ├── health_kit_service.dart    # Apple Health
│       └── local_storage_service.dart # Hive/SharedPrefs
│
├── 📁 domain/
│   ├── 📁 entities/
│   │   ├── user_entity.dart
│   │   ├── food_entity.dart
│   │   └── macros_entity.dart
│   └── 📁 repositories/
│       ├── auth_repository_interface.dart
│       ├── food_repository_interface.dart
│       └── user_repository_interface.dart
│
├── 📁 presentation/
│   ├── 📁 auth/
│   │   ├── 📁 cubit/
│   │   │   ├── auth_cubit.dart
│   │   │   └── auth_state.dart
│   │   ├── 📁 pages/
│   │   │   ├── login_page.dart
│   │   │   ├── signup_page.dart
│   │   │   └── forgot_password_page.dart
│   │   ├── 📁 widgets/
│   │   │   ├── auth_form.dart
│   │   │   └── social_login_buttons.dart
│   │   └── view.dart
│   │
│   ├── 📁 splash/
│   │   ├── 📁 pages/
│   │   │   └── splash_page.dart
│   │   └── view.dart
│   │
│   ├── 📁 onboarding/
│   │   ├── 📁 cubit/
│   │   │   ├── onboarding_cubit.dart
│   │   │   └── onboarding_state.dart
│   │   ├── 📁 pages/
│   │   │   ├── onboarding_intro_page.dart    # Image 1
│   │   │   ├── onboarding_steps_page.dart    # Image 2
│   │   │   ├── onboarding_basics_page.dart   # Image 3
│   │   │   ├── onboarding_goal_page.dart
│   │   │   └── onboarding_program_page.dart
│   │   ├── 📁 widgets/
│   │   │   ├── sync_health_card.dart
│   │   │   ├── steps_content.dart
│   │   │   ├── stepper.dart
│   │   │   └── onboarding_header.dart
│   │   └── view.dart
│   │
│   ├── 📁 home/
│   │   ├── 📁 cubit/
│   │   │   ├── home_cubit.dart
│   │   │   └── home_state.dart
│   │   ├── 📁 pages/
│   │   │   └── home_page.dart
│   │   ├── 📁 widgets/
│   │   │   ├── ai_plate_card.dart
│   │   │   ├── macros_summary.dart
│   │   │   ├── daily_stats_chart.dart
│   │   │   ├── quick_add_section.dart
│   │   │   ├── bottom_navigation.dart
│   │   │   └── time_period_selector.dart
│   │   └── view.dart
│   │
│   ├── 📁 food_logging/
│   │   ├── 📁 cubit/
│   │   │   ├── food_logging_cubit.dart
│   │   │   └── food_logging_state.dart
│   │   ├── 📁 pages/
│   │   │   ├── food_search_page.dart
│   │   │   ├── food_detail_page.dart
│   │   │   ├── quick_add_page.dart
│   │   │   └── scan_food_page.dart
│   │   ├── 📁 widgets/
│   │   │   ├── food_card.dart
│   │   │   ├── macro_input.dart
│   │   │   ├── food_list.dart
│   │   │   └── add_custom_food.dart
│   │   └── view.dart
│   │
│   ├── 📁 profile/
│   │   ├── 📁 cubit/
│   │   │   ├── profile_cubit.dart
│   │   │   └── profile_state.dart
│   │   ├── 📁 pages/
│   │   │   ├── profile_page.dart
│   │   │   ├── settings_page.dart
│   │   │   └── health_sync_page.dart
│   │   ├── 📁 widgets/
│   │   │   ├── profile_header.dart
│   │   │   ├── settings_item.dart
│   │   │   └── health_permissions.dart
│   │   └── view.dart
│   │
│   ├── 📁 statistics/
│   │   ├── 📁 cubit/
│   │   │   ├── statistics_cubit.dart
│   │   │   └── statistics_state.dart
│   │   ├── 📁 pages/
│   │   │   ├── weekly_stats_page.dart
│   │   │   └── monthly_stats_page.dart
│   │   ├── 📁 widgets/
│   │   │   ├── macro_chart.dart
│   │   │   ├── weight_trend_chart.dart
│   │   │   └── progress_card.dart
│   │   └── view.dart
│   │
│   └── 📁 common/
│       ├── 📁 widgets/
│       │   ├── custom_app_bar.dart
│       │   ├── loading_overlay.dart
│       │   └── empty_state.dart
│       └── 📁 cubits/
│           └── app_cubit.dart
│
├── 📁 providers/         # Service Locator / Dependency Injection
│   ├── service_locator.dart
│   ├── repositories_provider.dart
│   ├── services_provider.dart
│   └── cubits_provider.dart
│
├── app.dart              # Main app widget
└── main.dart             # Entry point