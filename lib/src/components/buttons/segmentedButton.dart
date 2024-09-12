import 'dart:developer';

import 'package:flutter/material.dart';

import '../text.dart';

class SHSegmentedBtn<T> extends StatelessWidget {
  const SHSegmentedBtn({
    super.key,
    required this.values,
    required this.selected,
    required this.onSelectionChanged,
    required this.labels,
  }) : assert(values.length == labels.length);
  final List<String> labels;
  final List<T> values;
  final T selected;
  final Function(T) onSelectionChanged;
  @override
  Widget build(BuildContext context) {
    return SegmentedButton<T>(
      showSelectedIcon: labels.length <= 3,
      emptySelectionAllowed: true,
      segments: List.generate(
        values.length,
        (index) => ButtonSegment(
          value: values[index],
          label: SHText.body(labels[index]),
          tooltip: labels[index],
        ),
      ),
      selected: <T>{selected},
      onSelectionChanged: (Set<T> val) {
        try {
          if (val.isNotEmpty) {
            if (val.first == selected) {
              return;
            }
            onSelectionChanged(val.first);
          }
        } catch (e) {
          log(e.toString());
        }
      },
    );
  }
}
