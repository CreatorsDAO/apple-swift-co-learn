<div align="center">
  <h1> Apple Swift 开发共学 </h1>

 <p> 小白也可以入门的 Apple Swift 共学/三周案例拆解，入门有趣 Swift 编程/两周实践开发，上线你的第一个 App</p>

 <p>
    <a href="https://github.com/CreatorsDAO"><img src="https://badgen.net/badge/icon/github?icon=github&label" alt="GitHub" /></a>
    <a href="https://twitter.com/Labs706"><img src="https://badgen.net/badge/icon/twitter?icon=twitter&label" alt="Twitter" /></a>
  </p>

</div>

## 共学前置

参与这个共学需要知道

1. mac 环境 (xcode) 
2. 有一个苹果生态调试设备 例：iphone、ipad、apple watch 等。
3. 苹果开发者账号(可选)

## 共学模块

### 模块一 Everything101

1. Xcode 101
2. Swift 和 Swift UI 的基础
3. 最简单的应用案例：两个简易闹钟、倒计时器和自己的小乐器
4. 应用开发全链条介绍：从需求和 idea 开始，依次经过产品需求梳理、原型设计、UI 设计和交互设计、开发、测试、上线及迭代，同时介绍一些最基本的原型和设计软件，并结合之前 Figma 的相关内容。

### 模块二

1. 多页面导航的应用
2. 传感器的使用
3. 数据存储
4. 应用的架构模式（以 MVVM 为例）
5. iPhone、Mac 开发与 vision OS 空间计算领域开发的关系，以及一套代码在不同平台的部署和应用，包括介绍如何制作带有智能 API 互动的小前端应用，如自己的 agents。

### 模块三 从 idea 到落地的工作坊

1. 讨论每个人的 App idea
2. 开展一对一工作坊，进行 App 实现与 debug。

## 参考资料链接

### Swift 共学推荐资料清单

Edited by Race

## 1. 设计（Design）

学习设计对于开发者和设计师来说都是至关重要的。以下是一些设计相关的重要资源和指南：

### 1.1 苹果官方的设计指南

- **Apple Human Interface Guidelines**
    
    苹果的人机界面设计指南是学习设计 iOS、macOS、watchOS 和 visionOS 应用的官方资源，涵盖了设计原则、UI 组件、动画、设计模式等。
    
    [Apple Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/)
    
- **VisionOS 和空间计算设计**
    
    VisionOS 是苹果专为空间计算设计的操作系统。使用 Vision Pro 设备的开发者可以参考苹果的空间计算设计指南，了解如何设计适合空间交互的应用。
    
    [Discover visionOS](https://developer.apple.com/visionos/)
    

### 1.2 设计系统参考

- **Google Material Design**
    
    谷歌的 Material Design 是一套广泛使用的设计系统，提供了丰富的设计资源和组件，适合用于 Android 开发以及跨平台设计。
    
    [Google Material Design](https://material.io/design)
    
- **Microsoft Fluent Design System**
    
    微软的 Fluent Design System 是一种现代化的设计语言，旨在为 Windows 和跨平台应用带来一致的用户体验。
    
    [Microsoft Fluent Design](https://www.microsoft.com/design/fluent/)
    

### 1.3 推荐的设计工具与学习资源

- **706之前的Figma 共学，之前也是Bonnie组织的**
    
    链接看之前的公众号推文或者找Bonnie交流
    
- **个人兴趣：视觉、纹理、字体、材料设计**
    
    作为一名对视觉设计、纹理、字体以及材料设计有兴趣的人，我非常愿意与大家分享和探讨这方面的见解。欢迎大家交流！

### 1.4 常用的图标库推荐

在设计过程中，我们会广泛使用 **SF Symbols** 作为常用的图标库。SF Symbols 提供了多达 6000 多个符号，可以无缝集成到 Apple 平台的 San Francisco 系统字体中，支持多种权重和尺寸。此外，还可以通过矢量图形编辑工具导出并编辑符号，创建具有共享设计特征和无障碍功能的自定义符号。详细文档请参考 [SF Symbols 人机界面指南](https://developer.apple.com/design/human-interface-guidelines/sf-symbols)。

如果你正在使用 macOS，可以前往 [SF Symbols 官方页面](https://developer.apple.com/sf-symbols/) 下载 SF Symbols 应用。如果你使用的是 iPad 环境，可以通过以下两个在线工具查询和使用 SF Symbols：

- [SF Symbols Online](https://github.com/andrewtavis/sf-symbols-online)
- [Hotpot 免费图标库](https://hotpot.ai/free-icons)

SF Symbols 为设计提供了丰富的图标选择，能够极大提升设计的一致性与效率。


## 2. 代码开发（Development）

以下是与 Swift 和 SwiftUI 相关的学习资源和开发者文档，帮助你在代码开发方面快速入门和进阶：

### 2.1 苹果官方开发者资源

- **Swift 语言的语法与学习文档**
    
    苹果官方的 Swift 语言学习文档，详细讲解了 Swift 编程语言的基础语法，适合初学者和有经验的开发者。
    
    [Swift Programming Language Guide](https://docs.swift.org/swift-book/)
    
- **SwiftUI 文档**
    
    SwiftUI 是苹果推出的 declarative UI 框架，允许你使用声明式语法构建用户界面，跨 Apple 生态系统的应用开发。
    
    [SwiftUI Documentation](https://developer.apple.com/documentation/swiftui/)
    

### 2.2 推荐的 YouTube 频道和 Swift 开发者

- **CodeWithChris**
    
    专注于 Swift 和 iOS 开发的入门教程，适合初学者学习。
    
    [CodeWithChris YouTube Channel](https://www.youtube.com/user/CodeWithChris)
    
- **Sean Allen**
    
    提供从初学者到高级开发者的 Swift 和 iOS 开发的教程、项目示范和职业建议。
    
    [Sean Allen YouTube Channel](https://www.youtube.com/c/SeanAllen)
    
- **iOS Academy**
    
    提供各种 Swift 和 SwiftUI 项目示范，内容深入且实用，适合中级开发者学习。
    
    [iOS Academy YouTube Channel](https://www.youtube.com/c/IOSAcademy)
    

## 3. 创意内容（Creative Inspiration）

创意和灵感对于设计与开发至关重要。以下是一些获取创意想法的推荐平台和资源：

### 3.1 创意分享平台

- **Product Hunt**
    
    Product Hunt 是一个发现和分享最新科技产品的平台。你可以在这里找到各种新颖的应用和创意产品，获取灵感。
    
    [Product Hunt](https://www.producthunt.com/)
    
- **Apple Design Awards**
    
    苹果设计奖展示了每年在 iOS、macOS、watchOS 和 visionOS 上最具创新性和设计精良的应用。可以通过这些获奖作品来激发灵感。
    
    [Apple Design Awards](https://developer.apple.com/design/awards/)
    
- **Pinterest**
    
    Pinterest 是一个视觉灵感分享平台，涵盖了从图形设计到 UI/UX、材料设计等各类创意内容。
    
    [Pinterest](https://www.pinterest.com/)
    

### 3.2 更多商业案例参考

- **A16Z Portfolio**
    
    A16Z 是一家著名的风险投资公司，旗下的投资组合展示了最具前瞻性和创新性的科技产品和公司，适合研究商业化的创意案例。
    
    [A16Z Portfolio](https://a16z.com/portfolio/)
    
- **Y Combinator（YC）**
    
    YC 是世界上最著名的创业加速器之一，旗下的公司展示了最有潜力的创业项目和科技产品，适合研究如何讲述产品故事和商业定位。
    
    [Y Combinator](https://www.ycombinator.com/)
    
## 4. 提问的智慧（学习做一个高素质的开发者）

在编程和技术学习的过程中，掌握如何有效地提问，不仅能帮助我们更快地解决问题，还能体现出我们作为开发者的专业素养和态度。**《提问的智慧》** 是一篇经典的文章，详细阐述了如何通过合理的问题描述和有效的提问方式，来获得高质量的帮助与反馈。你可以通过以下链接阅读完整的指南：[提问的智慧 - GitHub](https://github.com/ryanhanwu/How-To-Ask-Questions-The-Smart-Way/blob/main/README-zh_CN.md)。

#### 如何提出有效的问题

1. **先做功课再提问**  
   在向社区或他人提问之前，确保你已经尽力通过搜索引擎、文档和已有的资源做了充分的研究。一个没有经过努力的问题，通常会被忽视，甚至会被视为不尊重他人时间。

2. **明确、简洁地描述问题**  
   你的问题描述应当尽量简洁，但同时包含足够的信息，让他人能够理解你的问题背景。包括但不限于：你想要实现什么、遇到了什么样的错误、环境配置、代码片段等。

3. **提供可复现的最小示例**  
   如果问题涉及代码，提供一个能够复现问题的**最小代码示例**，而不是整段冗长的代码。这样他人可以迅速理解问题，并提出有针对性的建议。

4. **清晰的标题**  
   提问时，标题应当能够精确传达问题的核心。例如，“为什么我的 Python 代码不工作？” 这样的标题过于模糊，应该改为 “为什么我的 Python 代码在使用 `open()` 时抛出 `FileNotFoundError`？”

5. **耐心等待和积极反馈**  
   提问后，要耐心等待他人的回复，切勿催促。同时，当问题解决后，及时向帮助过你的人表示感谢，并分享解决方案或结论，这不仅有助于他人，也能反映出你良好的沟通态度。

#### 常见的提问错误

- **提问前未进行基本搜索**  
  问题的答案往往可以通过简单的 Google 搜索或阅读文档找到。如果一个问题已经被多次回答，但你仍然直接提问，会让人觉得你不够认真。

- **过于模糊的描述**  
  “我的代码不工作了，怎么办？” 这样的问题很难回答。你需要提供上下文、具体的错误信息或日志，才能让他人有足够的信息来帮助你。

- **不礼貌或过于着急**  
  在提问时保持礼貌和谦虚。质疑他人的回答或表现出焦躁的态度只会让问题难以得到解决。

#### 提升提问的能力

学习如何提问是开发者成长过程中非常重要的一部分。通过掌握提问技巧，不仅能提高问题解决的效率，还能帮助你更好地融入技术社区。建议你花时间阅读并实践 **《提问的智慧》** 中的建议，逐步培养自己成为一名高素质的开发者。

完整指南请参考：[提问的智慧 - GitHub](https://github.com/ryanhanwu/How-To-Ask-Questions-The-Smart-Way/blob/main/README-zh_CN.md)。


---

另外，如果自己有创业想法的，我自己也整理了一个创业的国内外各种早起加速器的链接、渠道、referral的人的资料表，开放共创协作的，包含AI、crypto、生活方式、空间计算各种领域。

ZJU Creative Crew VC & Accelerator List
[https://docs.qq.com/sheet/DQkNwTklhRlNLYUhC](https://docs.qq.com/sheet/DQkNwTklhRlNLYUhC)

我这个也有一个小群，我自己发起的，叫做ZJU Creative Crew，最早是给我浙大的学弟学妹准备的，不过也面向大众可以参与，如果确实有需要可以私戳我我把大家加进去，群里不能发任何广告以及和带着推销可能性的信息。因为完全是一个用爱发电群。

群的背景：

之前和一些ZJU在校年轻校友聊天，他们的有趣、坚定、理智和创业热情让我钦佩。他们很多都在一个idea的阶段，但是还没有找到好的资源和帮助。我和一些校友朋友也进入过一些VC加速器，知道像奇绩、真格、以及像藕舫（校友系）等不少加速器和早期投资机构都对这个非常早期阶段的项目敞开，虽然他们在ZJU都曾做过宣讲，然而还是有大量的学弟学妹完全不知道这些消息和渠道。所以我和几个ZJU的校友一起商量了一下，我们建了一个群，面向非常年轻的ZJU在校生群体，如有自己觉得靠谱的创业idea，想要了解各种加速器、VC的机会的，可以进群咨询已经入围的校友，以及获得必要的帮助（不限于review材料、判断、帮内推referral等）
这个行为完全是公益的，不做任何必要投入时间的保证，就是发自内心希望ZJU能够多出一些有趣、坚定、理智的有搞一点开创性玩意的同学
另外也欢迎有同样热情的创业者前辈们加入提供帮助

## 共学产出

按照 [项目模版](https://github.com/orgs/CreatorsDAO/discussions/60) 创建自己的 demo 项目，共学结束的时候参与 demo day。

## 共学 QA

[discussions](https://github.com/orgs/CreatorsDAO/discussions/categories/q-a)


# 课后作业
## **Sep14 课后作业：Swift 基础上**

#### **作业要求**：
请完成以下 Swift 代码作业，涉及到 **变量与常量**、**数据类型（Int、Double、Bool、String）** 以及 **字符串插值** 的使用。每道题目请用注释解释代码的作用。

---

#### **1. 声明变量与常量**

- 声明一个变量表示你的年龄，并将它修改为新的值。
- 声明一个常量表示你的出生年份，并尝试修改它（期待报错）。

```swift
// 声明一个变量表示年龄
var age: Int = 25
print("我的年龄是：\(age)")

// 修改年龄的值
age = 26
print("修改后的年龄是：\(age)")

// 声明一个常量表示出生年份
let birthYear: Int = 1995
print("我的出生年份是：\(birthYear)")

// birthYear = 1996  // 这里会报错，因为 birthYear 是常量，不能修改
```

---

#### **2. 使用不同的数据类型**

- 声明一个整数变量表示今天是几号。
- 声明一个浮点数变量表示一个商品的折扣。
- 声明一个布尔变量表示今天是否是晴天。

```swift
// 声明一个整数变量表示今天的日期
var today: Int = 14
print("今天是\(today)号")

// 声明一个浮点数表示商品折扣
var discount: Double = 0.25
print("当前商品的折扣是：\(discount * 100)%")

// 声明一个布尔变量表示是否晴天
var isSunny: Bool = true
print("今天是晴天吗？\(isSunny)")
```

---

#### **3. 字符串与字符串插值**

- 声明一个字符串变量表示你的名字。
- 通过字符串插值，输出一句话，介绍你的名字和年龄。

```swift
// 声明一个字符串变量表示名字
var name: String = "李晨啸"

// 使用字符串插值输出一句话
print("大家好，我叫\(name)，今年\(age)岁。")
```

---

#### **4. 类型转换**

- 声明一个整数表示你拥有的苹果数量。
- 声明一个浮点数表示每个苹果的价格。
- 通过类型转换，计算并输出购买这些苹果的总价格。

```swift
// 声明一个整数表示苹果数量
var numberOfApples: Int = 4

// 声明一个浮点数表示每个苹果的价格
var applePrice: Double = 2.99

// 计算总价，并使用类型转换将整数转换为浮点数
let totalPrice: Double = Double(numberOfApples) * applePrice
print("我买了\(numberOfApples)个苹果，总价格是\(totalPrice)元。")
```

---

#### **5. 逻辑运算**

- 声明两个布尔变量，表示是否是周末和是否是假期。
- 使用逻辑运算符，判断今天是否是休息日。

```swift
// 声明两个布尔变量
var isWeekend: Bool = false
var isHoliday: Bool = true

// 使用逻辑运算符判断是否是休息日
let isRestDay: Bool = isWeekend || isHoliday
print("今天是休息日吗？\(isRestDay)")
```

---

#### **6. 综合练习**

- 声明一个常量表示圆的半径，使用公式计算并输出圆的面积。
  > 提示：面积公式为 `π * r * r`，其中 `π` 可以使用 `Double.pi`。

```swift
// 声明常量表示圆的半径
let radius: Double = 5.0

// 计算圆的面积
let area: Double = Double.pi * radius * radius
print("半径为\(radius)的圆的面积是：\(area)")
```

---

## **Sep18 课后作业：Swift 基础下**
课后作业：
- 完成如下的代码练习
- 下载当前工程，查看、运行每一个SwiftUI编写的页面
- （可选）快速过一遍Swift语法的更详细的内容：https://gitbook.swiftgg.team/swift/swift-jiao-cheng

我为你提供了与原始问题同类的案例，但情境和数据有所不同。以下是修改后的练习题和对应的代码答案。

---

### 1. **数组操作**

#### 题目：
创建一个包含 5 个不同城市名称的数组，并进行以下操作：
- 添加一个新城市到数组中。
- 修改数组中的第 4 个城市。
- 删除第 1 个城市。
- 输出数组的第 2 个城市和最后一个城市。

#### 答案：

```swift
var cities = ["New York", "London", "Tokyo", "Paris", "Sydney"]

// 添加新城市
cities.append("Berlin")

// 修改第4个城市
cities[3] = "Rome"

// 删除第1个城市
cities.remove(at: 0)

// 输出第2个和最后一个城市
print("Second city: \(cities[1])")  // 输出：Tokyo
print("Last city: \(cities[cities.count - 1])")  // 输出：Berlin
```

---

### 2. **字典操作**

#### 题目：
创建一个包含 3 种动物及其寿命的字典，进行以下操作：
- 添加一个新的动物及其寿命。
- 修改字典中某个动物的寿命。
- 删除一个动物。
- 输出所有动物及其寿命。

#### 答案：

```swift
var animalLifespans = ["Elephant": 70, "Dog": 13, "Cat": 15]

// 添加新动物和寿命
animalLifespans["Turtle"] = 100

// 修改某个动物的寿命
animalLifespans["Dog"] = 14

// 删除一个动物
animalLifespans.removeValue(forKey: "Cat")

// 输出所有动物和寿命
for (animal, lifespan) in animalLifespans {
    print("\(animal): \(lifespan) years")
}
// 输出：
// Elephant: 70 years
// Dog: 14 years
// Turtle: 100 years
```

---

### 3. **条件语句**

#### 题目：
根据一个年龄，判断该年龄属于哪个阶段：
- 小于 13 岁为 "儿童"。
- 大于等于 13 且小于 18 为 "青少年"。
- 大于等于 18 为 "成年人"。

#### 答案：

```swift
let age = 15

if age < 13 {
    print("儿童")
} else if age < 18 {
    print("青少年")
} else {
    print("成年人")
}
// 输出：青少年
```

---

### 4. **循环**

#### 题目：
- 使用 `for-in` 循环，遍历一个包含 5 个公交线路的数组，并输出每条线路的名称。
- 使用 `while` 循环，计算从 1 到 5 的累加和，并输出结果。

#### 答案：

```swift
// for-in 循环
let busRoutes = ["Route 1", "Route 2", "Route 3", "Route 4", "Route 5"]
for route in busRoutes {
    print("公交线路：\(route)")
}
// 输出：
// 公交线路：Route 1
// 公交线路：Route 2
// 公交线路：Route 3
// 公交线路：Route 4
// 公交线路：Route 5

// while 循环
var number = 1
var sum = 0
while number <= 5 {
    sum += number
    number += 1
}
print("累加和：\(sum)")  // 输出：累加和：15
```

---

### 5. **函数**

#### 题目：
- 编写一个函数，接收两个浮点数 `a` 和 `b`，返回它们的差值。
- 编写一个函数，接收一个整数数组，输出每个数字乘以 2 的结果。

#### 答案：

```swift
// 返回差值的函数
func subtract(a: Double, b: Double) -> Double {
    return a - b
}

let difference = subtract(a: 10.5, b: 3.2)
print("Difference: \(difference)")  // 输出：Difference: 7.3

// 输出乘以 2 的函数
func doubleNumbers(numbers: [Int]) {
    for number in numbers {
        print("\(number) * 2 = \(number * 2)")
    }
}

doubleNumbers(numbers: [1, 3, 5, 7])
// 输出：
// 1 * 2 = 2
// 3 * 2 = 6
// 5 * 2 = 10
// 7 * 2 = 14
```

---

### 6. **可选类型（Optionals）**

#### 题目：
- 定义一个可选类型的 `Double` 变量。使用 `if let` 语法解包并打印它，如果没有值则打印 "无数据"。
- 定义一个可选类型的布尔值变量。使用 `??` 提供默认值，并打印结果。

#### 答案：

```swift
// 可选 Double
var optionalTemperature: Double? = 22.5

if let temperature = optionalTemperature {
    print("Temperature: \(temperature)°C")
} else {
    print("无数据")
}
// 输出：Temperature: 22.5°C

// 可选布尔值
var isOnline: Bool? = nil
print("Is online: \(isOnline ?? false)")  // 输出：Is online: false
```

---

### 7. **结构体**

#### 题目：
- 定义一个 `Book` 结构体，包含 `title`（标题）、`author`（作者）和 `year`（出版年份）三个属性，以及一个描述书籍的 `description` 方法。创建一个 `Book` 实例并调用 `description` 方法。
- 定义一个 `Circle` 结构体，包含 `radius`（半径）属性，并定义一个方法计算圆的面积。创建一个 `Circle` 实例并计算并输出面积。

#### 答案：

```swift
// Book 结构体
struct Book {
    var title: String
    var author: String
    var year: Int
    
    func description() {
        print("The book '\(title)' was written by \(author) in \(year).")
    }
}

let myBook = Book(title: "1984", author: "George Orwell", year: 1949)
myBook.description()  // 输出：The book '1984' was written by George Orwell in 1949.

// Circle 结构体
struct Circle {
    var radius: Double
    
    func area() -> Double {
        return 3.1416 * radius * radius
    }
}

let circle = Circle(radius: 5.0)
print("Circle area: \(circle.area())")  // 输出：Circle area: 78.54
```