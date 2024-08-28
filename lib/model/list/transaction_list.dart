import 'package:bank_app/model/transaction.dart';
import 'package:bank_app/utils/const/text_list.dart';
import 'package:flutter/material.dart';

List<TransactionModel> transactionList = [
  TransactionModel(
    icon: Icons.apple,
    title: RTexts.appleTitle,
    subTitle: RTexts.appleSubTitle,
    amount: RTexts.amount1,
  ),
  TransactionModel(
    icon: Icons.shopify,
    title: RTexts.spotifyTitle1,
    subTitle: RTexts.spotifySubTitle,
    amount: RTexts.amount2,
  ),
  TransactionModel(
    icon: Icons.file_download_outlined,
    title: RTexts.moneyTransferTitle,
    subTitle: RTexts.moneyTransferSubTitle,
    amount: RTexts.amount3,
  ),
  TransactionModel(
    icon: Icons.shopping_cart_rounded,
    title: RTexts.groceryTitle,
    subTitle: RTexts.grocerySubTitle,
    amount: RTexts.amount4,
  ),
  TransactionModel(
    icon: Icons.network_ping,
    title: RTexts.netflixTitle,
    subTitle: RTexts.netflixSubTitle,
    amount: RTexts.amount5,
  ),
];
