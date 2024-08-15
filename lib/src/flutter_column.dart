import 'package:flutter/widgets.dart';

/// {@template flutter_column}
/// Expandable Flutter column that supports scrolling and allows the use of `Expanded` and `Spacer` widgets.
/// {@endtemplate}
class FlutterColumn extends StatelessWidget {
  /// {@macro flutter_column}
  ///
  /// Creates a scrollable and expandable column.
  ///
  /// The [children] argument must not be null.
  const FlutterColumn({
    required this.children,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.padding,
    super.key,
  });

  /// The widgets to display in this column.
  final List<Widget> children;

  /// The amount of space to insert around the column contents.
  final EdgeInsetsGeometry? padding;

  /// How the children should be placed along the main axis.
  final MainAxisAlignment mainAxisAlignment;

  /// How the children should be placed along the cross axis.
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    Widget content = Column(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      children: children,
    );
    if (padding != null) content = Padding(padding: padding!, child: content);

    return CustomScrollView(
      /// Instead of ListView or SingleChildScrollView put CustomScrollVIew
      /// to use Expanded or spacer
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: content,
        ),
      ],
      physics: const ClampingScrollPhysics(),
    );
  }
}
