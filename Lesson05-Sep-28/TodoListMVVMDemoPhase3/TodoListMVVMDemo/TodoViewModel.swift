import Foundation

class TodoViewModel: ObservableObject {
    @Published var todos: [Todo] = []  // 任务列表
    @Published var newTodo: String = ""  // 新任务的输入

    private let todosKey = "todosKey"  // UserDefaults 中存储任务的键

    init() {
        loadTodos()  // 初始化时加载本地存储的任务
    }

    // 添加新任务的方法
    func addTodo() {
        guard !newTodo.isEmpty else { return }
        let newTask = Todo(title: newTodo)
        todos.append(newTask)
        newTodo = ""  // 清空输入框
        saveTodos()  // 每次添加任务后保存到本地
    }

    // 删除任务的方法
    func deleteTodo(at offsets: IndexSet) {
        todos.remove(atOffsets: offsets)
        saveTodos()  // 每次删除任务后保存到本地
    }

    // 保存任务列表到 UserDefaults
    private func saveTodos() {
        if let encodedTodos = try? JSONEncoder().encode(todos) {
            UserDefaults.standard.set(encodedTodos, forKey: todosKey)
        }
    }

    // 从 UserDefaults 加载任务列表
    private func loadTodos() {
        if let savedTodosData = UserDefaults.standard.data(forKey: todosKey),
           let decodedTodos = try? JSONDecoder().decode([Todo].self, from: savedTodosData) {
            todos = decodedTodos
        }
    }
}
