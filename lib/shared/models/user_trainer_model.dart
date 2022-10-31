import 'package:gym_app/shared/models/user_abstract_model.dart';
import 'package:gym_app/shared/models/user_client_model.dart';

class UserTrainer extends AbstractUser {
  // Lista id clientes
  late List<int> clientIds;
  late List<UserClient> listClients;
}