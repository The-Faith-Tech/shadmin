import 'package:flutter/material.dart';
import 'package:shadmin/shadmin.dart';
import 'package:shadmin_ui/widgets/inputBox.dart';

class CreateNewView extends StatelessWidget {
  const CreateNewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: InputBox(
                  title: "Create New",
                  children: [
                    SHTextFF(
                      controller: TextEditingController(),
                      hint: "Enter name",
                      label: "Name",
                    ),
                    kvsb4,
                    Row(
                      children: [
                        Expanded(
                          child: SHTextFF(
                            controller: TextEditingController(),
                            hint: "Enter age",
                            label: "Age",
                            inputType: TextInputType.number,
                          ),
                        ),
                        khsb4,
                        Expanded(
                          child: SHTextFF(
                            controller: TextEditingController(),
                            hint: "Enter address",
                            label: "Address",
                          ),
                        ),
                      ],
                    ),
                    kvsb4,
                    Row(
                      children: [
                        Expanded(
                          child: SHTextFF(
                            controller: TextEditingController(),
                            hint: "Enter city",
                            label: "City",
                            inputType: TextInputType.number,
                          ),
                        ),
                        khsb4,
                        Expanded(
                          child: SHTextFF(
                            controller: TextEditingController(),
                            hint: "Enter state",
                            label: "State",
                          ),
                        ),
                        khsb4,
                        Expanded(
                          child: SHTextFF(
                            controller: TextEditingController(),
                            hint: "Enter country",
                            label: "Country",
                          ),
                        ),
                      ],
                    ),
                    kvsb4,
                    SHTextFF(
                      controller: TextEditingController(),
                      hint: "Enter description",
                      label: "Description",
                      maxLines: 4,
                    ),
                  ],
                ),
              ),
              khsb5,
              Expanded(
                flex: 2,
                child: InputBox(
                  title: "Other Info",
                  children: [
                    SHTextFF(
                      controller: TextEditingController(),
                      hint: "Enter email",
                      label: "Email",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
