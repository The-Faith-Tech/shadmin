import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shadmin/shadmin.dart';
import 'package:shadmin_ui/models/user.dart';

class TableView extends StatelessWidget {
  const TableView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(bottom: kvs13),
      child: Column(
        children: [
          PaginatedDataTable(
            columns: [
              ...["Id", "Name", "Email", "Address", "Actions"]
                  .map((e) => DataColumn(label: SHText(e))),
            ],
            source: _UserDataSource(
              data: List.generate(
                11,
                (index) {
                  return User(
                      id: index,
                      name: "Person $index",
                      address: "Address $index",
                      email: "person$index@yopmail.com");
                },
              ),
            ),
            header: Container(
              padding: EdgeInsets.symmetric(vertical: kvs2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(kr2)),
              ),
              child: Row(
                children: [
                  SHText.heading("Users"),
                  khsb4,
                  SizedBox(
                    width: 350.w,
                    child: SHTextFF(
                      controller: TextEditingController(),
                      prefixIcon: Icons.search,
                      hint: "Search",
                    ),
                  ),
                ],
              ),
            ),
            headingRowHeight: 90.h,
            actions: [
              SHIconBtn(
                icon: Icons.filter_alt_sharp,
                onPressed: () {},
              )
            ],
            showCheckboxColumn: true,
          ),
        ],
      ),
    );
  }
}

class _UserDataSource extends DataTableSource {
  final List<User> data;

  _UserDataSource({required this.data});

  @override
  DataRow? getRow(int index) {
    if (index >= data.length) {
      return null;
    }

    final item = data[index];

    return DataRow(cells: [
      DataCell(Text(item.id.toString())),
      DataCell(Text(item.name.toString())),
      DataCell(Text(item.email.toString())),
      DataCell(Text(item.address.toString())),
      DataCell(
        Row(
          children: [
            SHIconBtn(
              icon: Icons.edit,
              color: Colors.blue,
              isOutlined: true,
              onPressed: () {},
            ),
            khsb2,
            SHIconBtn(
              icon: CupertinoIcons.delete,
              color: Colors.red,
              isTonal: true,
              onPressed: () {},
            ),
          ],
        ),
      ),
    ]);
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => data.length;

  @override
  int get selectedRowCount => 0;
}
