import 'package:test_ch_app/features/user/domain/entities/user_entities.dart';

import '../../data/data_source/mock_data_source/mock_users_data.dart';

class UserRepository {
  // Здесь должна быть логика для поиска пользователя по его идентификатору
  
  User? findUserById(String userId) {
    // Имитируем поиск пользователя в моковых данных
    
    return MockUsers.users[userId];
  }
}
