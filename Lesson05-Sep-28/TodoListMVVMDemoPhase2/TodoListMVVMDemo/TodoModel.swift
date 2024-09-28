import Foundation

// Todo模型，表示每个Todo项
struct Todo: Identifiable, Hashable {
    let id = UUID()
    var title: String
}
