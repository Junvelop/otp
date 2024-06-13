import SwiftUI

struct FourthPage: View {
    @Binding var currentPage: Int
    
    var body: some View {
        VStack {
            Text("This is the Fourth Page")
                .font(.largeTitle)
            
            Spacer()
            
            HStack {
                Spacer()
                
                VStack {
                    Image("gungame") // 이미지 삽입
                        .resizable()
                        .scaledToFit()
                        .frame(width: 225, height: 225) // 원하는 크기로 조정
                        .onTapGesture {
                            self.currentPage = 5 // 뉴 페이지로 전환하는 코드
                        }
                    
                    Text("Gun Game")
                        .font(.largeTitle)
                        .padding()
                        .onTapGesture {
                            self.currentPage = 5 // 뉴 페이지로 전환하는 코드
                        }
                }
                
                Spacer()
                
                VStack {
                    Image("snk")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 225, height: 225) // 이미지 크기 조정
                        .onTapGesture {
                            self.currentPage = 6 // 뉴 페이지로 전환하는 코드
                        }
                    
                    Text("Snake Game")
                        .font(.largeTitle)
                        .padding()
                        .onTapGesture {
                            self.currentPage = 6 // 뉴 페이지로 전환하는 코드
                        }
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


