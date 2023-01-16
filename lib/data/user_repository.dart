import 'package:inova/presentation/bloc/cubit/user/user_list.dart';
import 'package:inova/presentation/utils/user_list_data.dart';

class UserListRepository {
  Future<List<ProjectItem>> getAll() async {
    List<ProjectItem> listProject = <ProjectItem>[];
    List<Map<String, dynamic>> jsonList = listProjects;

    for (var json in jsonList) {
      ProjectItem projectItem = ProjectItem.fromJson(json);
      listProject.add(projectItem);
    }

    return listProject;
  }
}
