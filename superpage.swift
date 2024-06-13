//
//  FifthPage.swift
//  capstongit
//
//  Created by 박현준 on 5/21/24.
//

import SwiftUI

struct superpage: View {
    @Binding var currentPage: Int

    var body: some View {
        VStack {
            Text("Super Productivity")
                .font(.largeTitle)
                .padding()

            Spacer()

            GeometryReader { geometry in
                HStack(spacing: 20) { // 이미지와 텍스트를 수평으로 나열하는 HStack
                    Image("superproductivity2") // "your_image_name"을 실제 이미지 이름으로 바꾸세요
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: geometry.size.width / 2, height: geometry.size.height / 2) // 화면의 절반 크기로 설정
                        .padding(.leading, 10) // 왼쪽 패딩 추가

                    VStack(alignment: .leading, spacing: 10) { // 텍스트를 위로 정렬하고 간격을 조절하는 VStack
                        Text("""
                        Super Productivity는 고급 할일 목록 앱으로, 타임박싱 및 시간 추적 기능이 통합되어 있습니다. Jira, GitLab, GitHub, Open Project와의 통합을 지원합니다. 주요 기능으로는 작업 분류, 하위 작업, 태그, 색상 코드, 휴식 알림, 포모도로 타이머, 개인 성과 추적 등이 있습니다. 개인정보 보호를 중시하며, 데이터 수집이나 사용자 계정이 필요 없습니다. 이 앱은 Windows, macOS, Linux, Android에서 사용할 수 있는 오픈 소스 소프트웨어입니다.


                        """)
                        .font(.system(size: 14)) // 텍스트 폰트 크기 설정
                        .padding()
                        
                        // 하이퍼링크 추가
                        Link("프로젝트 GitHub 페이지 방문하기", destination: URL(string: "https://github.com/johannesjo/super-productivity")!)
                            .font(.system(size: 14))
                            .padding(.top, -15) // 하이퍼링크와 텍스트 사이의 간격 조절
                            .padding(.leading, 17)
                    }
                    .frame(maxWidth: .infinity) // 텍스트가 가능한 최대 너비를 가지도록 함
                }
            }

            Spacer()

            Button(action: {
                self.currentPage = 3
            }) {
                Text("Go back to Third Page")
                    .padding(10)
                    .font(.body)
                    .foregroundColor(.white)
                    .background(Color.purple)
                    .cornerRadius(8)
            }
            .padding(.bottom, 20)
        }
        .navigationTitle("Super-Productivity")
    }
}

