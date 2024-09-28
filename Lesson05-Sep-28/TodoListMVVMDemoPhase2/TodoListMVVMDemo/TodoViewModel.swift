import Foundation

class TodoViewModel: ObservableObject {
    @Published var todos: [Todo] = []  // 任务列表
    @Published var newTodo: String = ""  // 新任务的输入

    // 添加新任务的方法
    func addTodo() {
        guard !newTodo.isEmpty else { return }
        let newTask = Todo(title: newTodo)
        todos.append(newTask)
        newTodo = ""  // 清空输入框
    }

    // 删除任务的方法
    func deleteTodo(at offsets: IndexSet) {
        todos.remove(atOffsets: offsets)
    }
}
