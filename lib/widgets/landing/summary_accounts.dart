import 'dart:convert';

import 'package:athang_expense_tracker/base/style/text_styles.dart';
import 'package:athang_expense_tracker/plugins/http.dart';
// import 'package:athang_expense_tracker/widgets/common/account_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class AccountModel {
    num id;
    String title;
    String img;
    num openingBalance;

    AccountModel({
      required num this.id,
      required String this.title,
      required String this.img,
      required num  this.openingBalance,
    });

}

class summaryaccounts extends StatefulWidget {
  const summaryaccounts({super.key});

  @override
  State<summaryaccounts> createState() => _summaryaccountsState();
}

class _summaryaccountsState extends State<summaryaccounts> {
   List<AccountModel> accounts = [];

  @override
  void initState() {
    loadData();
  }

  Future<void> loadData() async {
       final res = await GetRequest('account/me');
      print(jsonDecode(res.body));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      //color: Colors.red,
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Current Balances',
            style: TypoStyles().kSectionHeader,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: accounts.map((val)=>AccountCard()).toList()
          ),
        ),
      ]),
    );
  }
}


class AccountCard extends StatelessWidget {
  const AccountCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:180,
      width: 300,
      //color: Colors.blueAccent,
      margin: EdgeInsets.only(left:16),
      padding: EdgeInsets.all(8),
      //child: Text('som random text'),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Expanded(
          child: Container(
            height: 50,
            padding: EdgeInsets.all(6),
            color: Colors.white,
            margin: EdgeInsets.only(bottom: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('NIBL', style: TypoStyles().kSectionHeader,),
                CircleAvatar(
                  backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2019/10/28/14/35/emoticon-4584555_960_720.png"),
                )
              ],),

          ),
        ),
        Container(
          //height: 50,
          //color: Colors.white,
          margin: EdgeInsets.only(bottom: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Nu.12000', style: TypoStyles().kPageHeader),
              Text('Nu.1200 this month', style: TypoStyles().kSectionHeader),
            ],
            ),
        )
      ],),
    );
  }}
  