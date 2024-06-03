import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megnath_expense_tracker/domain/landing/summary_model.dart';
import 'package:megnath_expense_tracker/domain/landing/summary_repo.dart';

class SummaryHome extends StatefulWidget {
  const SummaryHome({super.key});

  @override
  State<SummaryHome> createState() => _SummaryHomeState();
}

class _SummaryHomeState extends State<SummaryHome> {
  SummaryModel summary = SummaryModel();
  @override
  void initState(){
    loadData();
  }

  Future<void> loadData() async{
    SummaryModel res = await loadSummaryData();
    setState(() {
      summary = res;
    });
  }
  Widget build(BuildContext context) {
    return Container(
        height: 260,
        child: Stack(
          children: [
            Container(
              // margin: EdgeInsets.all(16),
              height: 165,
              color: Colors.red,
            ),
            Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.all(16),
                  // color: Colors.red,
                  margin: EdgeInsets.only(bottom: 16),
                  child: Column(
                    children: [
                      Container(
                        width: 200,
                        // height: 120,
                        // color: Colors.green,
                        margin: EdgeInsets.only(bottom: 16),
                        child: Column(
                          children: [
                            Text(
                              'Current Balance',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // height: 120,
                        // color: Colors.white,
                        margin: EdgeInsets.only(bottom: 16),
                        child: Column(
                          children: [
                            Text(
                              'Nu.' +summary.openingBalance.toString(),
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        // height: 120,
                        margin: EdgeInsets.only(bottom: 16),
                        padding: EdgeInsets.all(8),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Container(
                                // width: 200,
                                //color: Colors.red,
                                padding: EdgeInsets.all(4),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 60,
                                        // color: Colors.blueAccent,
                                        child: Center(
                                          child: Icon(
                                            Icons.arrow_downward,
                                            size: 36,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          width: 120,
                                          //color: Colors.blueAccent,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Total Expense",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                ),
                                              ),
                                              Text(
                                                'Nu. ${summary.expenses}',
                                                style: TextStyle(
                                                  fontSize: 24,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ]),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                // width: 200,
                                //color: Colors.red,
                                padding: EdgeInsets.all(4),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 60,
                                        // color: Colors.blueAccent,
                                        child: Center(
                                          child: Icon(
                                            Icons.arrow_upward,
                                            size: 36,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          width: 120,
                                          //color: Colors.blueAccent,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Total Balance",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                ),
                                              ),
                                              Text(
                                                'Nu. ${summary.income}',
                                                style: TextStyle(
                                                  fontSize: 24,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ]),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ));
  }
}
