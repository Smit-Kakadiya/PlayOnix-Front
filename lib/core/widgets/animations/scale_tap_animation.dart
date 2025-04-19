library flutter_scale_tap;

import 'package:flutter/physics.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

const double _defaultScaleMinValue = 0.95;
const double _defaultOpacityMinValue = 0.90;
final Curve _defaultScaleCurve = CurveSpring();
const Curve _defaultOpacityCurve = Curves.ease;
const Duration _defaultDuration = Duration(milliseconds: 100);

class ScaleTapConfig {
  static double? scaleMinValue;
  static Curve? scaleCurve;
  static double? opacityMinValue;
  static Curve? opacityCurve;
  static Duration? duration;
}

class InkWellBounce extends StatefulWidget {
  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final Widget child;
  final Duration? duration;
  final double? scaleMinValue;
  final Curve? scaleCurve;
  final Curve? opacityCurve;
  final double? opacityMinValue;
  final bool enableFeedback;

  const InkWellBounce({
    Key? key,
    this.enableFeedback = true,
    this.onPressed,
    this.onLongPress,
    required this.child,
    this.duration,
    this.scaleMinValue,
    this.opacityMinValue,
    this.scaleCurve,
    this.opacityCurve,
  }) : super(key: key);

  @override
  State<InkWellBounce> createState() => _InkWellBounceState();
}

class _InkWellBounceState extends State<InkWellBounce> with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late Animation<double> _scale;
  late Animation<double> _opacity;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(vsync: this);
    _scale = Tween<double>(begin: 1.0, end: 1.0).animate(_animationController);
    _opacity = Tween<double>(begin: 1.0, end: 1.0).animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Future<void> _animate({
    required double scale,
    required double opacity,
    required Duration duration,
  }) async {
    _animationController.stop();
    _animationController.duration = duration;

    _scale = Tween<double>(
      begin: _scale.value,
      end: scale,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: widget.scaleCurve ?? ScaleTapConfig.scaleCurve ?? _defaultScaleCurve,
      ),
    );

    _opacity = Tween<double>(
      begin: _opacity.value,
      end: opacity,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: widget.opacityCurve ?? ScaleTapConfig.opacityCurve ?? _defaultOpacityCurve,
      ),
    );

    _animationController.reset();
    await _animationController.forward();
  }

  Future<void> _onTapDown(PointerDownEvent _) => _animate(
    scale: widget.scaleMinValue ?? ScaleTapConfig.scaleMinValue ?? _defaultScaleMinValue,
    opacity: widget.opacityMinValue ?? ScaleTapConfig.opacityMinValue ?? _defaultOpacityMinValue,
    duration: widget.duration ?? ScaleTapConfig.duration ?? _defaultDuration,
  );

  Future<void> _onTapUp(PointerUpEvent _) => _animate(
    scale: 1.0,
    opacity: 1.0,
    duration: widget.duration ?? ScaleTapConfig.duration ?? _defaultDuration,
  );

  Future<void> _onTapCancel(PointerCancelEvent _) => _onTapUp(PointerUpEvent());

  @override
  Widget build(BuildContext context) {
    final bool isTapEnabled = widget.onPressed != null || widget.onLongPress != null;

    return AnimatedBuilder(
      animation: _animationController,
      builder: (_, child) => Opacity(
        opacity: _opacity.value,
        child: Transform.scale(
          scale: _scale.value,
          alignment: Alignment.center,
          child: child,
        ),
      ),
      child: Listener(
        onPointerDown: isTapEnabled ? _onTapDown : null,
        onPointerUp: _onTapUp,
        onPointerCancel: _onTapCancel,
        child: GestureDetector(
          onTap: isTapEnabled
              ? () {
            if (widget.enableFeedback) {
              SystemSound.play(SystemSoundType.click);
            }
            widget.onPressed?.call();
          }
              : null,
          onLongPress: widget.onLongPress,
          child: widget.child,
        ),
      ),
    );
  }
}

class CurveSpring extends Curve {
  final SpringSimulation _sim;

  CurveSpring() : _sim = _createSimulation(70, 20);

  @override
  double transform(double t) {
    final x = _sim.x(t);
    final x1 = _sim.x(1.0);
    return x + t * (1 - x1); // Normalize
  }
}

SpringSimulation _createSimulation(double stiffness, double damping) {
  return SpringSimulation(
    SpringDescription.withDampingRatio(
      mass: 1,
      stiffness: stiffness,
      ratio: 0.7,
    ),
    0.0,
    1.0,
    0.0,
  );
}
