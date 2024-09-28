import SwiftData
import SwiftUI

class TodoViewModel: ObservableObject {

    @Published var newTodo: String = ""  // 新任务的输入

    // 添加新任务的方法
    func addTodo(context: ModelContext) {
        guard !newTodo.isEmpty else { return }
        let newTask = Todo(title: newTodo)
        context.insert(newTask)  // 使用 ModelContext 来插入数据
        newTodo = ""  // 清空输入框
    }

    // 删除任务的方法
    func deleteTodo(todo: Todo, context: ModelContext) {
        context.delete(todo)  // 使用 ModelContext 来删除数据
    }
}
