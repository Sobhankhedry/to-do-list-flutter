class ToDo {
  String Id;
  String Text;
  bool isDone;

  // Constructor
  ToDo({
    required this.Id,
    required this.Text,
    this.isDone = false,
  });


  static List<ToDo> toDoList(){
    return [

    ];
  }
}
