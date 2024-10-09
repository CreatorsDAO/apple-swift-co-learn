import SwiftUI
import Alamofire

struct AlamofireChatView: View {
    @State private var messages: [Message] = []
    @State private var inputText: String = ""
    
    var body: some View {
        VStack {
            ScrollView {
                ForEach(messages) { message in
                    HStack {
                        if message.role == "user" {
                            Spacer()
                            Text(message.content)
                                .padding()
                                .background(Color.blue.opacity(0.2))
                                .cornerRadius(10)
                        } else {
                            Text(message.content)
                                .padding()
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(10)
                            Spacer()
                        }
                    }
                    .padding(.horizontal)
                }
            }
            
            HStack {
                TextField("Type your message...", text: $inputText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(minHeight: 30)
                
                Button(action: sendMessage) {
                    Text("Send")
                }
                .padding()
            }
            .padding()
        }
    }
    
    func sendMessage() {
        let userMessage = Message(role: "user", content: inputText)
        messages.append(userMessage)
        inputText = ""
        
        fetchChatResponse()
    }
    
    func fetchChatResponse() {
        let url = "https://api.openai.com/v1/chat/completions"
        let headers: HTTPHeaders = [
            "Authorization": "Bearer YOUR_API_KEY",
            "Content-Type": "application/json"
        ]
        
        let parameters: [String: Any] = [
            "model": "gpt-3.5-turbo",
            "messages": messages.map { ["role": $0.role, "content": $0.content] }
        ]
        
        AF.request(url, method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: headers)
            .responseDecodable(of: ChatResponse.self) { response in
                switch response.result {
                case .success(let chatResponse):
                    if let content = chatResponse.choices.first?.message.content {
                        DispatchQueue.main.async {
                            let aiMessage = Message(role: "assistant", content: content)
                            messages.append(aiMessage)
                        }
                    }
                case .failure(let error):
                    print("Error: \(error.localizedDescription)")
                }
            }
    }
}

struct ChatResponse: Codable {
    let choices: [Choice]
}

struct Choice: Codable {
    let message: ChatMessage
}

struct ChatMessage: Codable {
    let role: String
    let content: String
}

#Preview {
    AlamofireChatView()
}
