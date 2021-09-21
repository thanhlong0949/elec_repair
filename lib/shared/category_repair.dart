import 'package:flutter/material.dart';
import 'design_course_app_theme.dart';
import 'package:elec_repair/screens/dashboard_repair.dart';

class CategoryRepair extends StatefulWidget {
  const CategoryRepair({Key? key}) : super(key: key);
  @override
  State<CategoryRepair> createState() => _CategoryRepairState();
}

class _CategoryRepairState extends State<CategoryRepair> {
  CategoryType categoryType = CategoryType.tatCa;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // ignore: prefer_const_constructors
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 215, 0, 0),
          // ignore: prefer_const_constructors
          child: Text(
            'Loại thiết bị',
            textAlign: TextAlign.left,
            // ignore: prefer_const_constructors
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              letterSpacing: 0.27,
              color: DesignCourseAppTheme.darkerText,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Row(
            children: <Widget>[
              getButtonUI(
                  CategoryType.tatCa, categoryType == CategoryType.tatCa),
              const SizedBox(
                width: 16,
              ),
              getButtonUI(
                  CategoryType.tuLanh, categoryType == CategoryType.tuLanh),
              const SizedBox(
                width: 16,
              ),
              getButtonUI(
                  CategoryType.mayGiat, categoryType == CategoryType.mayGiat),
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        // ignore: prefer_const_constructors
        Text(
            '   Yêu cầu gần bạn',
            textAlign: TextAlign.left,
            // ignore: prefer_const_constructors
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              letterSpacing: 0.27,
              color: DesignCourseAppTheme.darkerText,
            ),
          ),
      ],
    );
  }

  Widget getButtonUI(CategoryType categoryTypeData, bool isSelected) {
    String txt = '';
    if (CategoryType.tatCa == categoryTypeData) {
      txt = 'Tất cả';
    } else if (CategoryType.tuLanh == categoryTypeData) {
      txt = 'Tủ lạnh';
    } else if (CategoryType.mayGiat == categoryTypeData) {
      txt = 'Máy giặt';
    }
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: isSelected
                ? HexColor('#54D3C2')
                : DesignCourseAppTheme.nearlyWhite,
            borderRadius: const BorderRadius.all(Radius.circular(24.0)),
            border: Border.all(color: HexColor('#54D3C2'))),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: Colors.white24,
            borderRadius: const BorderRadius.all(Radius.circular(24.0)),
            onTap: () {
              setState(() {
                categoryType = categoryTypeData;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 12, bottom: 12, left: 18, right: 18),
              child: Center(
                child: Text(
                  txt,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    letterSpacing: 0.27,
                    color: isSelected
                        ? DesignCourseAppTheme.nearlyWhite
                        : HexColor('#54D3C2'),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

enum CategoryType {
  tatCa,
  tuLanh,
  mayGiat,
}
