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
      ToDo(Id: '01', Text: "Run", isDone: false),
      ToDo(Id: '02', Text: "Buy groceries", isDone: false),
      ToDo(Id: '03', Text: "Complete Flutter project", isDone: true),
      ToDo(Id: '04', Text: "Call mom", isDone: false),
      ToDo(Id: '05', Text: "Read a book", isDone: true),
    ];
  }
}
