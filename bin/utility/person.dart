//a simple Peron class

//Normal Function
num anotherSumup(num val1,num val2)=>val1 +val2;
//Function expression
num Function(num,num) sumUp = (num val1,num val2)=>val1 +val2;

//returns a function
Function getFuncAdd(num val1){
  return (num val2)=>val1 +val2;
}
//expression that returns a function
Function Function(num) getFuncAddAgain = (val1)=>(val2)=> val1 + val2;

//accepts a function
void Function(void Function()) executor = (Function anyFunc)=>anyFunc();


//Person class!
class Person{
  String firstName;
  String lastName;
  int age;

  Person(this.firstName, this.lastName ,this.age):assert(age > 20);

  Person.withNoAge(this.firstName, this.lastName );

  Person.empty():this.withNoAge("sol","dog");

  Person.defaultOne():this.firstName="sol",
                  this.lastName ="dog",
                  this.age =43;

  //Redirecting constructor!
  Person.fromJSON(Map<String,dynamic> json):
      this(json["firstName"], json["lastName"],json["age"]);

  //factory constructors can return and cant access this!
  factory Person.fromJSONAgain(Map<String,dynamic> json)=>
        Person(json["firstName"], json["lastName"],json["age"]);



  @override
  String toString() {
    // TODO: implement toString
    return "firstname is $firstName"
        "lastname is $lastName"
        "age is $age"
    ;
  }


}
