import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shadmin/shadmin.dart';
import 'package:shadmin_ui/views/button/iconBtnShowCase.dart';
import 'package:shadmin_ui/views/button/primaryButtonShowCase.dart';
import 'package:shadmin_ui/views/button/textBtnShowCase.dart';

class SHButtonsView extends StatefulWidget {
  const SHButtonsView({super.key});

  @override
  State<SHButtonsView> createState() => _SHButtonsViewState();
}

class _SHButtonsViewState extends State<SHButtonsView> {
  late bool isDisabled;
  late bool isOutlined;
  late bool isLoading;
  late bool showIcon;
  late bool isTonal;

  late int selectedBtn;

  @override
  void initState() {
    isDisabled = false;
    isOutlined = false;
    isLoading = false;
    showIcon = false;
    isTonal = false;
    selectedBtn = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(khs4),
        child: Column(
          children: [
            Center(
              child: SHSegmentedBtn(
                width: 500,
                labels: const ["Primary", "Icon", "Text"],
                values: const [1, 2, 3],
                selected: selectedBtn,
                onSelectionChanged: (val) {
                  log(val.toString(), name: "SegmentedVal: ");
                  setState(() {
                    selectedBtn = val;
                  });
                },
              ),
            ),
            kvsb2,
            const Divider(),
            kvsb2,
            if (selectedBtn == 1) ...[
              _buildControls(context),
              PrimaryButtonShowCase(
                isDisabled: isDisabled,
                isLoading: isLoading,
                isOutlined: isOutlined,
                icon: showIcon ? Icons.settings_outlined : null,
              ),
            ],
            if (selectedBtn == 2) ...[
              SHText.heading("Icon Button"),
              kvsb4,
              IconBtnShowCase(
                icon: Icons.settings_outlined,
                isLoading: isLoading,
                isDisabled: isDisabled,
                isOutlined: isOutlined,
              ),
            ],
            if (selectedBtn == 3) ...[
              _buildControls(context),
              SHText.heading("Text Button"),
              kvsb2,
              TextBtnShowCase(
                isDisabled: isDisabled,
                isLoading: isLoading,
                isOutlined: isOutlined,
                isTonal: isTonal,
                showIcon: showIcon,
                icon: Icons.add_outlined,
              ),
            ],
          ],
        ),
      ),
    );
  }

  _buildControls(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SHText("Disabled"),
            Checkbox(
              value: isDisabled,
              onChanged: (val) {
                setState(() {
                  isDisabled = val ?? false;
                });
              },
            ),
            SHText("Outlined"),
            Checkbox(
              value: isOutlined,
              onChanged: (val) {
                setState(() {
                  isOutlined = val ?? false;
                });
              },
            ),
            SHText("Loading"),
            Checkbox(
              value: isLoading,
              onChanged: (val) {
                setState(() {
                  isLoading = val ?? false;
                });
              },
            ),
          ],
        ),
        Row(
          children: [
            SHText("Icon"),
            Checkbox(
              value: showIcon,
              onChanged: (val) {
                setState(() {
                  showIcon = val ?? false;
                });
              },
            ),
            SHText("Tonal"),
            Checkbox(
              value: isTonal,
              onChanged: (val) {
                setState(() {
                  isTonal = val ?? false;
                });
              },
            ),
          ],
        ),
        const Divider(),
        kvsb2,
      ],
    );
  }
}
