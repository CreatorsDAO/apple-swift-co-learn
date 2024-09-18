import SwiftUI

struct DemoView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                
                // 1. 基本文本
                Text("Hello, SwiftUI!")
                    .font(.title)
                    .padding()

                // 2. 自定义字体、颜色和粗体
                Text("Custom Font, Color, and Bold")
                    .font(.system(size: 24, weight: .bold, design: .rounded))
                    .foregroundColor(.blue)
                    .padding()

                // 3. 斜体
                Text("Italic Text")
                    .italic()
                    .padding()
                
                // 4. 下划线和删除线
                Text("Underlined and Strikethrough")
                    .underline(true, color: .blue)
                    .strikethrough(true, color: .red)
                    .padding()

                // 5. 多行文本，自动换行
                Text("This is a long text that will automatically wrap if it exceeds the width of the screen. SwiftUI handles text wrapping for you.")
                    .font(.body)
                    .padding()
                
                // 6. 自定义行间距和对齐
                Text("This text has a custom line spacing and is center aligned.")
                    .lineSpacing(10)
                    .multilineTextAlignment(.center)
                    .padding()

                // 7. 拼接多个文本
                Text("Hello, ") + Text("SwiftUI").bold().foregroundColor(.red)
                
                // 8. 超链接样式文本
                Text("Click here to visit SwiftUI documentation")
                    .foregroundColor(.blue)
                    .underline()
                    .onTapGesture {
                        if let url = URL(string: "https://developer.apple.com/documentation/swiftui") {
                            UIApplication.shared.open(url)
                        }
                    }
                    .padding()

                // 9. 自适应动态字体大小 (Accessibility)
                Text("Dynamic Type Text")
                    .font(.system(.title, design: .serif))
                    .dynamicTypeSize(.large ... .xxLarge)  // 支持动态字体大小
                    .padding()
                
                // 10. 背景颜色和圆角
                Text("Text with background and rounded corners")
                    .padding()
                    .background(Color.green)
                    .cornerRadius(10)
                    .foregroundColor(.white)

                // 11. 多语言支持 (本地化)
                Text(LocalizedStringKey("Hello_World"))
                    .padding()
                
                // 12. 阴影效果
                Text("Text with shadow")
                    .font(.largeTitle)
                    .shadow(color: .gray, radius: 2, x: 0, y: 2)
                    .padding()
                
                // 13. 自定义字间距
                Text("Custom Letter Spacing")
                    .kerning(5)
                    .padding()
                
                // 14. 高亮文本
                Text("Highlighted Text")
                    .foregroundColor(.yellow)
                    .background(Color.black)
                    .padding()
            }
            .padding()
        }
        .navigationTitle("Text Examples")
    }

}

#Preview {
    DemoView()
}

