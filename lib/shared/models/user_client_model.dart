import 'package:gym_app/shared/models/training_block_model.dart';
import 'package:gym_app/shared/models/user_abstract_model.dart';

class UserClient extends AbstractUser {
  late List<TrainingBlock> listTrainingBlock;
  late String uniqueCodeClient;
}