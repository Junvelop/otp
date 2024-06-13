//
import SwiftUI

struct gitsearchView: View {
    @Binding var searchQuery: String
    @State private var searchResults = [RepositorySearchResult]()
    @State private var searchButtonEnabled = true // 검색 버튼 활성화 여부
    
    var body: some View {
        VStack {
            TextField("Enter search query", text: $searchQuery)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button("Search") {
                performSearch()
            }
            .padding()
            .disabled(!searchButtonEnabled) // 검색 버튼 비활성화
            
            List(searchResults, id: \.id) { result in
                VStack(alignment: .leading) {
                    Text(result.full_name) // 'fullName' -> 'full_name'으로 변경
                        .font(.headline)
                    Text(result.html_url) // 'htmlUrl' -> 'html_url'로 변경
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
        }
        .navigationTitle("Repository Search")
        .onAppear {
            performSearch()
        }
    }
    
    func performSearch() {
        guard let token = readTokenFromFile() else {
            print("Error: Failed to read token from file")
            return
        }
        
        guard let encodedQuery = searchQuery.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) else {
            print("Error: Failed to encode search query")
            return
        }
        
        guard let url = URL(string: "https://api.github.com/search/repositories?q=\(encodedQuery)") else {
            print("Error: Invalid URL")
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        request.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
        
        // 검색 중에는 버튼 비활성화
        // 새로운 검색 요청을 보내지 못하도록 함
        searchButtonEnabled = false
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                print("Error: Failed to perform search request:", error)
                return
            }
            
            guard let httpResponse = response as? HTTPURLResponse else {
                print("Error: Invalid response")
                return
            }
            
            guard (200...299).contains(httpResponse.statusCode) else {
                print("Error: Invalid status code:", httpResponse.statusCode)
                return
            }
            
            guard let data = data else {
                print("Error: No data received")
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let searchResponse = try decoder.decode(RepositorySearchResponse.self, from: data)
                DispatchQueue.main.async {
                    self.searchResults = searchResponse.items
                }
            } catch {
                print("Error decoding JSON: \(error)")
            }
            
            // 검색이 완료되면 버튼 활성화
            DispatchQueue.main.async {
                self.searchButtonEnabled = true
            }
        }.resume()
    }
    
    func readTokenFromFile() -> String? {
        guard let fileURL = Bundle.main.url(forResource: "capston2", withExtension: "txt") else {
            print("Error: Token file not found")
            return nil
        }
        
        do {
            let fileHandle = try FileHandle(forReadingFrom: fileURL) // 파일을 읽기 위해 FileHandle을 생성
            defer {
                fileHandle.closeFile() // 파일을 닫음
            }
            
            let tokenData = fileHandle.readDataToEndOfFile() // 파일 데이터를 읽음
            if let token = String(data: tokenData, encoding: .utf8) {
                print("Token read from file:", token)
                return token.trimmingCharacters(in: .whitespacesAndNewlines)
            } else {
                print("Error: Failed to decode token data")
                return nil
            }
        } catch {
            print("Error reading token from file:", error)
            return nil
        }
    }
}

struct RepositorySearchResponse: Codable {
    let items: [RepositorySearchResult]
}

struct RepositorySearchResult: Codable, Identifiable {
    let id = UUID()
    let full_name: String // 'fullName' -> 'full_name'으로 변경
    let html_url: String // 'htmlUrl' -> 'html_url'로 변경
    
    // 'full_name' 및 'html_url' 필드의 이름을 변경했으므로, 이에 따라 CodingKeys도 변경해야 함
    private enum CodingKeys: String, CodingKey {
        case full_name = "full_name"
        case html_url = "html_url"
    }
}

struct gitsearch_Previews: PreviewProvider {
    static var previews: some View {
        FirstPage(currentPage: .constant(1))
    }
}

