import 'package:flutter/material.dart';
import 'package:playonix/core/widgets/text_widgets.dart';
import 'package:playonix/gen/assets.gen.dart';
import 'package:playonix/gen/strings.g.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  late AnimationController _logoController;
  late AnimationController _textController;

  late Animation<double> _logoAnimation;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 1));

    _logoController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _textController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    _logoAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _logoController,
        curve: Curves.easeOutBack,
      ),
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _textController,
        curve: Curves.easeIn,
      ),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _textController,
        curve: Curves.easeOut,
      ),
    );
    Future.delayed(Duration(seconds: 1)).then((_){
      _logoController.forward().then((_) {
        _textController.forward(); // Start tagline animation after logo animation finishes
      });
    });

  }

  @override
  void dispose() {
    _logoController.dispose();
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 48.0),
          child: Stack(
            alignment: Alignment.center,
            children: [
              ScaleTransition(
                scale: _logoAnimation,
                child: Image.asset(
                  Assets.images.playonixLogo.path,
                  height: 300,
                  width: 300,
                ),
              ),
              Positioned(
                bottom: 0,
                child: FadeTransition(
                  opacity: _fadeAnimation,
                  child: SlideTransition(
                    position: _slideAnimation,
                    child: AppText.titleLarge(t.app_tag_line),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
