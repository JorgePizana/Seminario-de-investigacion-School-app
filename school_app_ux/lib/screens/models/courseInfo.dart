import 'package:school_app_ux/screens/models/course_model.dart';

class Description{
  final CourseData material_homework;
  final String description;
  final bool unread;

  Description({
    this.material_homework,
    this.description,
    this.unread,
});

}

//materials and homework
final CourseData video = CourseData(
  id: 0,
  activity: "Vídeo repaso - Matemáticas",
  imageUrl: 'assets/images/background_start_image.jpg',
);

final CourseData homework = CourseData(
  id: 1,
  activity: "Tarea #1 - Historia",
  imageUrl: 'assets/images/background_start_image.jpg',
);

final CourseData questions = CourseData(
  id: 3,
  activity: "Questionario de repaso - Música",
  imageUrl: 'assets/images/background_start_image.jpg',
);

final CourseData personalQuestions = CourseData(
  id: 4,
  activity: "Dudas personales",
  imageUrl: 'assets/images/background_start_image.jpg',
);

//List example in home screen
List<Description> pendingsList = [
  Description(
    material_homework: video,
    description: "Repaso de multiplicación de fracciones",
    unread: false,
  ),
  Description(
    material_homework: homework,
    description: "Explicación de la tarea de la clase. Fecha de entrega 22/11/2020",
    unread: true,
  ),
  Description(
    material_homework: questions,
    description: "Para resolver dudas de la clase de hoy :)",
    unread: false,
  ),
  Description(
    material_homework: personalQuestions,
    description: "Manda dudas de manera anonima, para resolverla durante clase.",
    unread: false,
  ),
];