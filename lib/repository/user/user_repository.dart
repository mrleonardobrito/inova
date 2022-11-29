import 'package:inova/src/utils/user_list_data.dart';
import 'package:inova/models/user/user_list.dart';

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
