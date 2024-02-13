import 'package:test_ch_app/features/chat/domain/entities/message.dart';

abstract class IMessageSelectionRepository {
  Future<List<Message>> listAllMessage(String userId);  
}
