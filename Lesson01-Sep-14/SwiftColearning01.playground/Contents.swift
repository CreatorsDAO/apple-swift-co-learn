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
var fruits = ["Apple", "Banana", "Cherry"]
fruits.append("Orange")  // 添加元素到数组中
print(fruits[0])  // 访问数组的第一个元素，输出：Apple


// MARK: - 5. 字典

// 字典是一种键值对的集合，每个键都与一个值相关联
var person = ["name": "John", "age": "30"]
print(person["name"]!)  // 强制解包，输出：John
person["profession"] = "Engineer"  // 添加新的键值对
print(person)  // 输出：["name": "John", "age": "30", "profession": "Engineer"]


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


// MARK: - 7. 循环

// Swift 提供了 for-in 循环来遍历数组、字典或范围
let numbers = [1, 2, 3, 4, 5]
for number in numbers {
    print(number)  // 输出数组中的每个元素
}

for i in 1...5 {
    print("第 \(i) 次循环")  // 输出从 1 到 5 的循环次数
}


// MARK: - 8. 函数

// 函数是用来执行特定任务的代码块
func greet(name: String) -> String {
    return "Hello, \(name)!"  // 返回带有名字的问候
}

let greetingMessage = greet(name: "Alice")
print(greetingMessage)  // 输出：Hello, Alice!


// MARK: - 9. 可选类型（Optionals）

// 可选类型用于处理可能不存在的值
var optionalName: String? = "John"
if let name = optionalName {
    print("Hello, \(name)")  // 如果 optionalName 有值，则输出 "Hello, John"
} else {
    print("No name provided")  // 如果 optionalName 为 nil，输出 "No name provided"
}

optionalName = nil  // 将 optionalName 设置为 nil
print(optionalName ?? "Default Name")  // 使用 ?? 运算符提供默认值，输出：Default Name


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
personInstance.greet()  // 输出：Hello, my name is Alice and I am 30 years old.
