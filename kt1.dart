// Родительский класс
class ParentClass {
  // Два атрибута класса
  String attribute1;
  int attribute2;

  // Конструктор
  ParentClass(this.attribute1, this.attribute2);

  // Публичный метод, использующий скрытый метод
  void publicMethod() {
    _hiddenMethod();
  }

  // Еще один публичный метод
  void anotherPublicMethod() {
    print("This is another public method in ParentClass.");
  }

  // Скрытый метод
  void _hiddenMethod() {
    print("This is a hidden method in ParentClass.");
  }
}

// Дочерний класс
class ChildClass extends ParentClass {
  // Конструктор дочернего класса
  ChildClass(String attribute1, int attribute2) : super(attribute1, attribute2);

  // Переопределенный метод родительского класса
  @override
  void publicMethod() {
    print("This is an overridden method in ChildClass.");
  }

  // Собственный статичный метод
  static void childStaticMethod() {
    print("This is a static method in ChildClass.");
  }
}

void main() {
  // Создаем экземпляр родительского класса
  ParentClass parent = ParentClass("Example", 42);
  parent.publicMethod(); // Вызов публичного метода родительского класса
  parent.anotherPublicMethod(); // Вызов другого публичного метода родительского класса

  // Создаем экземпляр дочернего класса
  ChildClass child = ChildClass("Example", 42);
  child.publicMethod(); // Вызов переопределенного метода дочернего класса

  // Вызов статичного метода дочернего класса
  ChildClass.childStaticMethod();
}
