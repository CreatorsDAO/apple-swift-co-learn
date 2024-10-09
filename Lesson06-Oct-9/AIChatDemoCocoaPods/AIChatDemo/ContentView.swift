//
//  ContentView.swift
//  AIChatDemo
//
//  Created by Race Li on 2024/10/8.
//

import SwiftUI

struct ContentView: View {
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
        guard let url = URL(string: "https://api.openai.com/v1/chat/completions") else {
            print("Invalid URL")
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("Bearer YOUR_API_KEY", forHTTPHeaderField: "Authorization")
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let parameters: [String: Any] = [
            "model": "gpt-3.5-turbo",
            "messages": messages.map { ["role": $0.role, "content": $0.content] }
        ]
        
        request.httpBody = try? JSONSerialization.data(withJSONObject: parameters)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                print("Error: \(error.localizedDescription)")
                return
            }
            
            guard let data = data else {
                print("No data received")
                return
            }
            
            if let json = try? JSONSerialization.jsonObject(with: data, options: []),
               let jsonDict = json as? [String: Any],
               let choices = jsonDict["choices"] as? [[String: Any]],
               let message = choices.first?["message"] as? [String: Any],
               let content = message["content"] as? String {
                DispatchQueue.main.async {
                    let aiMessage = Message(role: "assistant", content: content)
                    messages.append(aiMessage)
                }
            } else {
                print("Failed to parse JSON")
            }
        }.resume()
    }
}

#Preview {
    ContentView()
}
