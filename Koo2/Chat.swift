import SwiftUI

struct Chat: View {
    @State private var inputMessages: [String] = []
    @State private var chatMessages: [ChatMessage] = [ChatMessage(role: "system", content: "무엇을 도와드릴까요?")]

    var body: some View {
        VStack {
            ChatView(chatMessages: $chatMessages)
        }
    }
}

struct ChatMessage: Identifiable, Codable {
    var id = UUID()
    let role: String
    let content: String
}

struct ChatView: View {
    @Binding var chatMessages: [ChatMessage]
    @State private var inputText: String = ""
    
    var body: some View {
        VStack {
            List(chatMessages) { message in
                Text("\(message.role == "user" ? "나: " : "챗GPT: ")\(message.content)")
            }
            
            HStack {
                TextField("메시지를 입력하세요", text: $inputText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .foregroundColor(.blue)
                
                Button(action: sendMessage) {
                    Text("전송")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .padding()
        }
        .padding()
    }
    
    private func sendMessage() {
        guard !inputText.isEmpty else { return }
        let userMessage = ChatMessage(role: "user", content: inputText)
        chatMessages.append(userMessage)
        
        DispatchQueue.global().asyncAfter(deadline: .now() + 1.0) {
            sendToOpenAI(messages: chatMessages) { response in
                DispatchQueue.main.async {
                    chatMessages.append(ChatMessage(role: "assistant", content: response))
                }
            }
        }
        
        inputText = ""
    }
    
    private func sendToOpenAI(messages: [ChatMessage], completion: @escaping (String) -> Void) {
        let apiKey = "sk-proj-augQdR0a6LGntSXk5DxmT3BlbkFJMFP5pCJCW9udPh2H6ZLr"
        
        let modelId = "gpt-3.5-turbo"
        
        guard let url = URL(string: "https://api.openai.com/v1/chat/completions") else {
            completion("API 요청에 실패했습니다.")
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue("Bearer \(apiKey)", forHTTPHeaderField: "Authorization")
        
        let messagePayload = messages.map { ["role": $0.role, "content": $0.content] }
        
        let requestBody: [String: Any] = [
            "model": modelId,
            "max_tokens": 2200,
            "temperature": 0.7,
            "messages": messagePayload
        ]

        guard let httpBody = try? JSONSerialization.data(withJSONObject: requestBody) else {
            completion("요청 본문을 만들 수 없습니다.")
            return
        }
        
        request.httpBody = httpBody
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                completion("네트워크 오류: \(error.localizedDescription)")
                return
            }
            
            guard let httpResponse = response as? HTTPURLResponse else {
                completion("서버 응답이 올바르지 않습니다.")
                return
            }
            
            switch httpResponse.statusCode {
            case 200...299:
                guard let data = data else {
                    completion("데이터를 받지 못했습니다.")
                    return
                }
                
                do {
                    let result = try JSONDecoder().decode(OpenAIResponse.self, from: data)
                    let responseText = result.choices.first?.message.content.trimmingCharacters(in: .whitespacesAndNewlines) ?? "응답을 해석할 수 없습니다."
                    completion(responseText)
                } catch {
                    completion("응답을 해석할 수 없습니다: \(error.localizedDescription)")
                }
                
            default:
                completion("서버 오류: \(httpResponse.statusCode)")
            }
        }.resume()
    }
    
    struct OpenAIResponse: Codable {
        let choices: [Choice]
        
        struct Choice: Codable {
            let message: Message
        }
        
        struct Message: Codable {
            let role: String
            let content: String
        }
    }
}


