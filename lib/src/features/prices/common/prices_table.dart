import 'package:car_rental/src/core/core.dart';
import 'package:flutter/material.dart';

class PricesTable extends StatefulWidget {
  const PricesTable({Key? key}) : super(key: key);

  @override
  State<PricesTable> createState() => _PricesTableState();
}

class _PricesTableState extends State<PricesTable> {
  late List<DataColumn> _tableHeaders;
  late List<DataRow> _tableRow;

  @override
  void initState() {
    _setTableHeaders();
    _setTableRows();
    super.initState();
  }

  void _setTableHeaders() {
    _tableHeaders = const <DataColumn>[
      DataColumn(
        label: Center(child: Text('')),
      ),
      DataColumn(
        label: Padding(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Center(
            child: Text(
              '4 hours',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
      DataColumn(
        label: Padding(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Center(
            child: Text(
              '1 day',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
      DataColumn(
        label: Padding(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Center(
            child: Text(
              'Week',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
      DataColumn(
        label: Padding(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Center(
            child: Text(
              'Month',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
    ];
  }

  void _setTableRows() {
    _tableRow = <DataRow>[
      DataRow(
        cells: <DataCell>[
          DataCell(
            SizedBox(
              width: 150,
              height: 80,
              child: Image.asset(
                AssetConsts.rolls_royce,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const DataCell(
            Center(child: Text('50\$')),
          ),
          const DataCell(
            Center(child: Text('200\$')),
          ),
          const DataCell(
            Center(child: Text('800\$')),
          ),
          const DataCell(
            Center(child: Text('3000\$')),
          ),
        ],
      ),
      DataRow(
        cells: <DataCell>[
          DataCell(
            SizedBox(
              width: 150,
              height: 80,
              child: Image.asset(
                AssetConsts.bmw_i8,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const DataCell(
            Center(child: Text('90\$')),
          ),
          const DataCell(
            Center(child: Text('380\$')),
          ),
          const DataCell(
            Center(child: Text('1300\$')),
          ),
          const DataCell(
            Center(child: Text('5000\$')),
          ),
        ],
      ),
      DataRow(
        cells: <DataCell>[
          DataCell(
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                width: 150,
                height: 80,
                child: Image.asset(
                  AssetConsts.benz_2,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const DataCell(
            Center(
              child: Text('120\$'),
            ),
          ),
          const DataCell(
            Center(child: Text('450\$')),
          ),
          const DataCell(
            Center(child: Text('2000\$')),
          ),
          const DataCell(
            Center(child: Text('7000\$')),
          ),
        ],
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        dataRowHeight: 160,
        headingRowColor:
            MaterialStateColor.resolveWith((states) => AppColor.lightBlue),
        border: TableBorder.all(
          width: 2,
          color: AppColor.grey.withOpacity(0.9),
        ),
        showBottomBorder: true,
        columns: _tableHeaders,
        rows: _tableRow,
        // rows: const <DataRow>[

        // ],
      ),
    );
  }
}
