import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shadmin/shadmin.dart';
import 'package:shadmin_ui/utils/fileUtils.dart';

class CreateNewView extends StatelessWidget {
  const CreateNewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: kvs4, horizontal: khs6),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(kr2),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyText("Create New"),
                MyTextBtn(
                  label: "Save",
                  isTonal: true,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          kvsb5,
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 3,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SHInputBox(
                          title: "Details",
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
                        kvsb5,
                        SHInputBox(
                          title: "Upload Photos",
                          children: [
                            InkWell(
                              onTap: () async {
                                var res = await Fileutils.pickFile();
                                log(res.toString());
                              },
                              child: SHDottedContainer(
                                  padding:
                                      EdgeInsets.symmetric(vertical: kvs11),
                                  dashPattern: const [5, 3],
                                  child: Center(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const Icon(Icons.cloud_upload_rounded),
                                        khsb4,
                                        MyText("Drop your files here"),
                                      ],
                                    ),
                                  )),
                            )
                          ],
                        ),
                        kvsb5,
                        SHInputBox(
                          title: "Select",
                          children: [
                            GestureDetector(
                              onTap: () async {
                                var date = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(1998),
                                    lastDate: DateTime(3050));
                                log("Date: $date");
                              },
                              child: SHTextFF(
                                controller: TextEditingController(),
                                enabled: false,
                                label: "DOB",
                                hint: "Pick DOB",
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                khsb5,
                Expanded(
                  flex: 2,
                  child: SHInputBox(
                    title: "Other Info",
                    children: [
                      SHTextFF(
                        controller: TextEditingController(),
                        hint: "Enter email",
                        label: "Email",
                      ),
                      kvsb3,
                      SHDropdown<String>(
                        value: null,
                        label: "Select",
                        items: [
                          DropdownMenuItem(
                            value: "one",
                            child: MyText("Option One"),
                          ),
                          DropdownMenuItem(
                            value: "two",
                            child: MyText("Option Two"),
                          ),
                          DropdownMenuItem(
                            value: "three",
                            child: MyText("Option Three"),
                          ),
                        ],
                        onChanged: (val) {},
                      ),
                      kvsb4,
                      Row(
                        children: [
                          MyText("Gender:"),
                          khsb3,
                          const SHRadio(
                            isActive: true,
                          ),
                          khsb1,
                          MyText("Male"),
                          khsb4,
                          const SHRadio(),
                          khsb1,
                          MyText("Female"),
                        ],
                      ),
                      kvsb4,
                      Row(
                        children: [
                          SHCheckbox(
                            value: true,
                            onChanged: (val) {},
                          ),
                          khsb3,
                          MyText("Please accept terms and condition"),
                        ],
                      ),
                      kvsb4,
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
