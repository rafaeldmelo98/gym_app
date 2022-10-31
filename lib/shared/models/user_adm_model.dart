import 'package:gym_app/shared/models/user_abstract_model.dart';
import 'package:gym_app/shared/models/user_trainer_model.dart';

class UserAdm extends AbstractUser {
  late List<int> listTrainerIds;
  late List<UserTrainer> listUserTrainer;
  late String gymName;
  late String gymLogo;
}