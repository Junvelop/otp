import SwiftUI

struct SecondPage: View {
    @Binding var currentPage: Int
    
    var body: some View {
        VStack {
            Text("This is the Second Page")
                .font(.largeTitle)
            
            Spacer()
            
            HStack {
                Spacer()
                
                VStack {
                    Image("PygWalekr") // 이미지 삽입
                        .resizable()
                        .scaledToFit()
                        .frame(width: 225, height: 225) // 원하는 크기로 조정
                    
                    Text("PygWalekr")
                        .font(.largeTitle)
                        .padding()
                        .onTapGesture {
                            self.currentPage = 8 // 뉴 페이지로 전환하는 코드
                        }
                }
                
                Spacer()
                
                VStack {
                    Image("gitterminal")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 225, height: 225) // 이미지 크기 조정
                        .onTapGesture {
                            self.currentPage = 7 // 뉴 페이지로 전환하는 코드
                        }
                    
                    Text("Vim 확장 프로그램")
                        .font(.largeTitle)
                        .padding()
                }
                
                Spacer()
            }
            .padding()
            
            Spacer()
            
            Button(action: {
                self.currentPage = 1
            }) {
                Text("Go back to First Page")
                    .padding(10)
                    .font(.body)
                    .foregroundColor(.white)
                    .background(Color.green)
                    .cornerRadius(8)
            }
            .padding(.bottom, 20)
        }
        .navigationTitle("Second Page")
    }
}

