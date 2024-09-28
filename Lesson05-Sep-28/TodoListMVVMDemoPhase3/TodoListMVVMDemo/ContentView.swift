import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = TodoViewModel()  // 使用ViewModel

    var body: some View {
        VStack {
            TextField("Enter new todo", text: $viewModel.newTodo)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button(action: {
                viewModel.addTodo()  // 使用ViewModel的addTodo方法
            }) {
                Text("Add Todo")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(30)
            }
            .padding()

            List {
                ForEach(viewModel.todos) { todo in
                    Text(todo.title)
                }
                .onDelete(perform: viewModel.deleteTodo)  // 使用ViewModel的deleteTodo方法
            }
        }
    }
}


#Preview {
    ContentView()
}
