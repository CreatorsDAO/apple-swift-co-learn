import Foundation
import SwiftData

@Model
class Todo {
    var id: UUID
    var title: String

    init(title: String) {
        self.id = UUID()  // 自动生成唯一的 ID
        self.title = title
    }
}
