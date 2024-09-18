// MARK: - 1. 变量与常量

// 变量：值可以改变
var myVariable = 10
myVariable = 20  // 变量的值可以被修改

// 常量：值一旦赋值后不能再改变
let myConstant = 10
// myConstant = 20  // 这一行会报错，因为常量不能被修改


// MARK: - 2. 数据类型

// Swift 是一种强类型语言，每个变量都有明确的数据类型。
// 常见的数据类型包括 Int, Double, Bool, 和 String。

// Comments: Command + /
let integer: Int = 42  // 整数
let apple = 10.0

let numberOfApples = 200

let floatingPoint: Double = 3.14159  // 双精度浮点数
var isSwiftAwesome: Bool = true  // 布尔值
isSwiftAwesome = false
let myString: String = "一款针对大学生或者年轻工作者帮助他们自动预估任务时长的工具"  // 字符串
print(myString) // function of x. print(myString)

// MARK: - 3. 字符串插值

// 字符串插值允许将变量插入到字符串中
let name = "Python"
let version = 3.9
let newMessage = "Swift \(version)"
let message = "Welcome to \(name) version \(version)!"
print(message)  // 输出：Welcome to Swift version 5.7!


// MARK: - 4. 数组

// 数组是用于存储相同类型元素的集合
var fruits = ["Apple", "Apple", "Banana", "Cherry"]
fruits.append("Orange")  // 添加元素到数组中
let aSpecificFruit = fruits[4]
print(fruits[0])  // 访问数组的第一个元素，输出：Apple

var animals = ["cat", "dog", "dinosaur"]


// 更多例子：
var myNumbers = [1, 2, 3, 4, 5]
myNumbers.remove(at: 2)  // 移除数组中的第三个元素
myNumbers.removeAll()
print(myNumbers)  // 输出：[1, 2, 4, 5]]

var colors = ["Red", "Green", "Blue"]
colors[1] = "Yellow"  // 修改数组中的元素
print(colors)  // 输出：["Red", "Yellow", "Blue"]

let emptyArray: [String] = []  // 创建一个空的字符串数组
print(emptyArray.isEmpty)  // 检查数组是否为空，输出：true

var fruitsAndColors: [[String]] = [["Apple", "Apple", "Banana", "Cherry"], ["Red", "Green", "Blue"]]
let fruitOrColor = fruitsAndColors[1][1]


// MARK: - 5. 字典

// 字典是一种键值对的集合，每个键都与一个值相关联
var person = ["name": "John", "age": "30"]
print(person["name"]!)  // 强制解包，输出：John
person["profession"] = "Engineer"  // 添加新的键值对
print(person)  // 输出：["name": "John", "age": "30", "profession": "Engineer"]

var foods = ["hotdog": 200, "riceball": 100]

// 更多例子：
var capitals = ["France": "Paris", "Japan": "Tokyo"]
capitals["Germany"] = "Berlin"  // 添加新的键值对
print(capitals)  // 输出：["France": "Paris", "Japan": "Tokyo", "Germany": "Berlin"]

capitals["Japan"] = "Kyoto"  // 修改字典中的值
print(capitals)  // 输出：["France": "Paris", "Japan": "Kyoto", "Germany": "Berlin"]

capitals.removeValue(forKey: "France")  // 移除字典中的键值对
print(capitals)  // 输出：["Japan": "Kyoto", "Germany": "Berlin"]

if let capital = capitals["Germany"] {
    print("The capital of Germany is \(capital)")  // 输出：The capital of Germany is Berlin
}

// MARK: - 6. 条件语句

// 条件语句可以根据条件执行不同的代码
let score = 85
if score >= 90 {
    print("优秀")  // 如果分数大于等于 90，输出 "优秀"
} else if score >= 60 {
    print("及格")  // 如果分数大于等于 60，输出 "及格"
} else {
    print("不及格")  // 否则输出 "不及格"
}

// 更多例子：
let temperature = 30
if temperature > 35 {
    print("非常热")  // 输出：非常热
} else if temperature > 20 {
    print("天气适中")  // 输出：天气适中
} else {
    print("比较冷")  // 输出：比较冷
}

let isRaining = true
let isSnowing = false
if isRaining {
    print("带伞出门")  // 输出：带伞出门
} else if isSnowing {
    print("穿厚衣服")  // 输出：穿厚衣服
} else {
    print("天气晴朗")  // 输出：天气晴朗
}

// MARK: - 7. 循环

// Swift 提供了 for-in 循环来遍历数组、字典或范围
let numbers = [1, 2, 3, 4, 5]
for number in numbers {
    print(number)  // 输出数组中的每个元素
}

for i in 1...5 {
    print("第 \(i) 次循环")  // 输出从 1 到 5 的循环次数
}

// 更多例子：
let names = ["Alice", "Bob", "Charlie"]
for name in names {
    print("Hello, \(name)")  // 输出：Hello, Alice 等等
}

let personInfo = ["name": "John", "age": "30", "profession": "Engineer"]
for (key, value) in personInfo {
    print("\(key): \(value)")  // 输出每个键值对
}

for i in stride(from: 0, to: 10, by: 2) {
    print(i)  // 每次递增 2，输出：0, 2, 4, 6, 8
}

var countdown = 5
while countdown > 0 {
    print("倒计时：\(countdown)")
    countdown -= 1
}

// MARK: - 8. 函数

// 函数是用来执行特定任务的代码块
func greet(name: String) -> String {
    return "Hello, \(name)!"  // 返回带有名字的问候
}

let greetingMessage = greet(name: "Alice")
print(greetingMessage)  // 输出：Hello, Alice!

// 更多例子：
func add(a: Int, b: Int) -> Int {
    return a + b  // 返回两个数的和
}

let sum = add(a: 5, b: 10)
print("Sum: \(sum)")  // 输出：Sum: 15

func multiply(a: Int, b: Int) -> Int {
    return a * b  // 返回两个数的乘积
}
print(multiply(a: 3, b: 4))  // 输出：12

func greetEveryone(names: [String]) {
    for name in names {
        print("Hello, \(name)!")
    }
}
greetEveryone(names: ["Alice", "Bob", "Charlie"])  // 分别问候每个人

// MARK: - 9. 可选类型（Optionals）

// 可选类型用于处理可能不存在的值
var optionalName: String? = "John"
if let name = optionalName {
    print("Hello, \(name)")  // 如果 optionalName 有值，则输出 "Hello, John"
} else {
    print("No name provided")
}

optionalName = nil  // 将 optionalName 设置为 nil
print(optionalName ?? "Default Name")  // 使用 ?? 运算符提供默认值，输出：Default Name

// 更多例子：
var age: Int? = 25
if let actualAge = age {
    print("Age is \(actualAge)")  // 输出：Age is 25
} else {
    print("Age is not provided")
}

age = nil
print(age ?? 18)  // 输出默认值 18

var city: String? = "New York"
print(city ?? "Unknown City")  // 输出：New York
city = nil
print(city ?? "Unknown City")  // 输出：Unknown City

// MARK: - 10. 结构体

// 结构体是一种数据类型，可以包含属性和方法
struct Person {
    var name: String
    var age: Int
    
    func greet() {
        print("Hello, my name is \(name) and I am \(age) years old.")
    }
}

let personInstance = Person(name: "Alice", age: 30)
let race = Person(name: "Race", age: 26)
personInstance.greet()  // 输出：Hello, my name is Alice and I am 30 years old.
race.greet()

// 更多例子：
struct Car {
    var make: String
    var model: String
    var year: Int
    
    func description() {
        print("This car is a \(year) \(make) \(model).")
    }
}

let myCar = Car(make: "Toyota", model: "Corolla", year: 2020)
myCar.description()  // 输出：This car is a 2020 Toyota Corolla.

struct Rectangle {
    var width: Double
    var height: Double
    
    func area() -> Double {
        return width * height  // 计算矩形的面积
    }
}

let rectangle = Rectangle(width: 5.0, height: 10.0)
print("Area: \(rectangle.area())")  // 输出：Area: 50.0

