import Foundation

// Todo模型，表示每个Todo项
struct Todo: Identifiable, Hashable, Codable {
    var id = UUID()
    var title: String
}
