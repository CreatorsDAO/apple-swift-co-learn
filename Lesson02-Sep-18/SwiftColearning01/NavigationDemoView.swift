import SwiftUI

struct NavigationDemoView: View {
    var body: some View {
        NavigationView {
            List {
                // 导航到详情视图
                NavigationLink(destination: DetailView(text: "First Item Detail")) {
                    Text("First Item")
                }
                
                NavigationLink(destination: DetailView(text: "Second Item Detail")) {
                    Text("Second Item")
                }
                
                NavigationLink(destination: DetailView(text: "Third Item Detail")) {
                    Text("Third Item")
                }
            }
            .navigationTitle("Items List")
        }
    }
}

// 详情视图
struct DetailView: View {
    var text: String
    
    var body: some View {
        VStack {
            Text(text)
                .font(.largeTitle)
                .padding()
            Spacer()
        }
        .navigationTitle("Detail View")
        .navigationBarTitleDisplayMode(.inline) // 显示小标题样式
    }
}

#Preview {
    NavigationDemoView()
}
