import SwiftUI

struct ContentView: View {
    @State private var todos: [String] = []
    @State private var newTodo: String = ""

    var body: some View {
        VStack {
            TextField("Enter new todo", text: $newTodo)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button(action: {
                if !newTodo.isEmpty {
                    todos.append(newTodo)
                    newTodo = ""
                }
            }) {
                Text("Add Todo")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(30)
            }
            .padding()

            List {
                ForEach(todos, id: \.self) { todo in
                    Text(todo)
                }
                .onDelete(perform: deleteTodo)
            }
        }
    }

    private func deleteTodo(at offsets: IndexSet) {
        todos.remove(atOffsets: offsets)
    }
}


#Preview {
    ContentView()
}
