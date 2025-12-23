
import 'package:flutter/foundation.dart'; // For ValueListenableBuilder
import 'package:flutter/material.dart';

import 'routes/app_router.dart';

import 'services/user_service.dart';
import 'services/notification_service.dart';

import 'package:intl/date_symbol_data_local.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    await initializeDateFormatting('tr_TR', null);
    await UserService().init();
    await NotificationService().init();
    runApp(const FitnessApp());
  } catch (e, stack) {
    print('STARTUP ERROR: $e');
    print(stack);
    runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.error_outline, color: Colors.red, size: 48),
                  const SizedBox(height: 16),
                  const Text("Başlatma Hatası", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Text(e.toString(), textAlign: TextAlign.center),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                     // Retry logic could go here, for now just print
                     print("Retry pressed");
                    }, 
                    child: const Text("Tekrar Dene")
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}

class FitnessApp extends StatelessWidget {
  const FitnessApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();

    return ValueListenableBuilder(
      valueListenable: UserService().settingsListenable,
      builder: (context, box, _) {
        final isDark = UserService().isDarkMode;
        
        return MaterialApp.router(
          title: 'Posturify',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
            scaffoldBackgroundColor: const Color(0xFFF4F5F7),
            cardColor: Colors.white,
            useMaterial3: true,
            textTheme: GoogleFonts.poppinsTextTheme(),
          ),
          darkTheme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.blue,
              brightness: Brightness.dark,
              surface: const Color(0xFF1E1E1E), // For containers
              onSurface: const Color(0xFFE0E0E0),
            ),
            scaffoldBackgroundColor: const Color(0xFF121212),
            cardColor: const Color(0xFF1E1E1E),
            useMaterial3: true,
            textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme),
          ),
          themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
          routerConfig: appRouter.config(),
        );
      },
    );
  }
}



