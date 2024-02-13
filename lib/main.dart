import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:test_ch_app/features/chat_list/domain/repository/abstract_conversation.dart';
import 'package:test_ch_app/features/chat_list/domain/repository/conversations_repository.dart';
import 'package:test_ch_app/features/user/domain/repository/user_repository.dart';
import 'package:test_ch_app/start_app.dart';

void main() {
  GetIt.instance.registerSingleton<ConversationsRepository>(
    ConversationsRepository(),
  );
  runApp(const StartApp());
}




// @override
  // void initState() {
  //   super.initState();

