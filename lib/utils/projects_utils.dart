class ProjectUtils{
  final String title,subtitle,image;
  final String githubLink;

  ProjectUtils({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.githubLink});
}

List<ProjectUtils> projects = [
  ProjectUtils(
      title: "Tennis Management",
      subtitle: "Firebase, Auth, Provider, MVVM",
      image: "assets/projects/tn.png",
      githubLink: "https://github.com/MhYldrm/Tennis-Management"
  ),
  ProjectUtils(
      title: "Delivery App",
      subtitle: "Firebase, Auth, Bloc, Cubit, MVVM",
      image: "assets/projects/d.png",
      githubLink: "https://github.com/MhYldrm/Basic-Delivery-App"
  ),
  ProjectUtils(
      title: "To Do App",
      subtitle: "Firebase, Auth, Bloc, MVVM",
      image: "assets/projects/td.png",
      githubLink: "https://github.com/MhYldrm/Basic-To-Do-App"
  ),
];