import Foundation

struct Message: Identifiable, Codable {
    let id: UUID
    let role: String
    let content: String
    
    init(role: String, content: String) {
        self.id = UUID()
        self.role = role
        self.content = content
    }
}