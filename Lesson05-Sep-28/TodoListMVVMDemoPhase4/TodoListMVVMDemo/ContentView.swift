import SwiftUI
import SwiftData

struct ContentView: View {
    @StateObject private var viewModel = TodoViewModel()  // 使用ViewModel
    @Environment(\.modelContext) private var context  // 获取 ModelContext
    @Query var todos: [Todo]  // 使用 @Query 来监听数据变化

    var body: some View {
        VStack {
            TextField("Enter new todo", text: $viewModel.newTodo)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button(action: {
                viewModel.addTodo(context: context)  // 使用ViewModel的addTodo方法
            }) {
                Text("Add Todo")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(30)
            }
            .padding()

            List {
                ForEach(todos) { todo in
                    Text(todo.title)
                }
                .onDelete { indexSet in
                    for index in indexSet {
                        viewModel.deleteTodo(todo: todos[index], context: context)  // 删除任务
                    }
                }
            }
        }
    }
}


#Preview {
    ContentView()
        .modelContainer(for: Todo.self)  // 为预览提供 ModelContainer
}
