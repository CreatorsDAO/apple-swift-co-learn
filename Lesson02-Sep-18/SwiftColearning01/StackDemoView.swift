import SwiftUI

struct StackDemoView: View {
    var body: some View {
        // 创建一个水平的排布，里面有两个文本组件，内容自定 HStack
        // 创建一个垂直的排布，里面有三个文本组件，内容自定 VStack
        // 创建一个纵深的排布，里面有两个文本组件，内容自定 ZStack
        // 自由创建一个多组嵌套的排布
        VStack(alignment: .leading, spacing: 0) {
            Color.red
                .frame(width: 100, height: 300)
            Color.gray
            Color(red: 0.3, green: 0.3, blue: 05)
            Rectangle()
            
            HStack(spacing: 0) {
                Circle().foregroundColor(.mint)
                Circle().foregroundColor(.yellow)
                Circle()
            }
            
            Capsule()
        }
    }
}

#Preview {
    StackDemoView()
}
