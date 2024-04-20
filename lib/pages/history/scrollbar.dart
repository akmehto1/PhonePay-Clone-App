import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:phonepat/models/history.dart';
import 'package:phonepat/models/transaction.dart';
import 'package:phonepat/pages/history/scrollitem.dart';

class ScrollBar extends StatefulWidget {
  const ScrollBar({Key? key}) : super(key: key);

  @override
  State<ScrollBar> createState() => _ScrollBarState();
}

class _ScrollBarState extends State<ScrollBar> {
  // List<History> historyList =history_list;

  List<Transaction>transactions_list=transactions;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            statement(),
            Container(
              height: 530,
              child: ListView.builder(
                itemCount:transactions_list.length,
                itemBuilder:(BuildContext context, int index) {
                  String name=transactions_list[index].name;
                  String amount=transactions_list[index].amount;
                  String receive_date=transactions_list[index].receive_date;
                  String image=transactions_list[index].image;
                  bool receive=transactions_list[index].receive;
                  return Item(usertransaction:transactions_list[index],name:name,image:image, amount:amount,receive_date:receive_date,index:index,receive:receive,);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget statement() {
    return Container(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 7.0, vertical: 5.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(7.0),
            ),
            child: const Row(
              children: [
                const Text(
                  "Download statement",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(width: 5),
                Icon(Icons.download_for_offline_outlined, size: 20),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 7.0, vertical: 5.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(7.0),
            ),
            child: const Row(
              children: [
                Text("Filters"),
                SizedBox(width: 5),
                Icon(Icons.menu_sharp, size: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
