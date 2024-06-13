import SwiftUI

struct SevenPage: View {
    @Binding var currentPage: Int
    
    var body: some View {
        VStack {
            Text("VIM 확장 프로그램")
                .font(.largeTitle)
                .padding()

            Spacer()
            
            GeometryReader { geometry in
                HStack(spacing: 20) { // 이미지와 텍스트를 수평으로 나열하는 HStack
                    GIFImageView(gifName: "installer(2)")
                        .frame(width: geometry.size.width / 2, height: geometry.size.height / 2) // 화면의 절반 크기로 설정
                        .padding(.leading, 10) // 왼쪽 패딩 추가

                    VStack(alignment: .leading, spacing: 10) { // 텍스트를 위로 정렬하고 간격을 조절하는 VStack
                        Text("""
                        vim-plug는 현대적인 Vim 플러그인 관리자로서, 플러그인을 별도의 디렉토리에 다운로드하여 올바르게 로드되도록 합니다. 이를 통해 플러그인을 쉽게 업데이트하고, 변경 사항을 검토(및 선택적으로 되돌릴 수)하며, 더 이상 사용하지 않는 플러그인을 제거할 수 있습니다.
                        """)
                        .font(.system(size: 14)) // 텍스트 폰트 크기 설정
                        .padding()
                        
                        // 하이퍼링크 추가
                        Link("프로젝트 GitHub 페이지 방문하기", destination: URL(string: "https://github.com/junegunn/vim-plug")!)
                            .font(.system(size: 14))
                            .padding(.top, 10)
                            .padding(.leading, 17) // 왼쪽 패딩 추가
                    }
                    .frame(maxWidth: .infinity) // 텍스트가 가능한 최대 너비를 가지도록 함
                }
            }

            Spacer()
            
            Button(action: {
                self.currentPage = 2
            }) {
                Text("Go back to Second Page")
                    .padding(10)
                    .font(.body)
                    .foregroundColor(.white)
                    .background(Color.purple)
                    .cornerRadius(8)
            }
            .padding(.bottom, 20)
        }
        .navigationTitle("Seven Page")
    }
}

