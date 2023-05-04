part of "app_sizer.dart";

typedef SizerBuilder = Widget Function(
  BuildContext context,
  Orientation orientation,
);

class AppSizer extends StatelessWidget {
  const AppSizer({super.key, required this.builder, this.designSize});
  final SizerBuilder builder;
  final Size? designSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(builder: (context, orientation) {
          AppSizerUtils.setScreen(constraints, designSize: designSize);

          if (constraints.maxWidth == 0 || constraints.maxHeight == 0) {
            return const SizedBox();
          }

          return builder(context, orientation);
        });
      },
    );
  }
}
