//
//  Quiz.swift
//  p
//
//  Created by 구유진 on 2024/05/23.
//

import SwiftUI

struct Quiz: View {
    
    @State private var answer1: String = ""
    @State private var answer2: String = ""
    @State private var answer3: String = ""
    
    @State private var resultMessage1: String = ""
    @State private var resultMessage2: String = ""
    @State private var resultMessage3: String = ""

    
    var body: some View {
        VStack {
            ScrollView {
                Spacer()
                Text("Quiz")
                    .fontWeight(.bold)
                    .font(.system(size:50))
                    .foregroundColor(Color(red: 0.07, green: 0.046, blue: 0.626))
                
                Spacer()
                
                //Quiz 1
                Text("Q1. 오픈소스 사용 시 주의가 필요한 고려사항 3가지는?")
                    .fontWeight(.bold)
                    .font(.system(size:20))
                
                TextField("답을 입력하세요.", text: $answer1)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .frame(width: 400)
                
                Button(action: checkAnswer1) {
                    Text("제출")
                        .font(.title2)
                        .padding()
                        .cornerRadius(10)
                }
                
                Text(resultMessage1)
                    .font(.title2)
                    .foregroundColor(resultMessage1 == "정답입니다!" ? .green : .red)
                
                Group{
                    //Quiz 2
                    Text("Q2.컴퓨터 프로그램 저작물이 보호 받는 지식재산권 유형 4가지는?")
                        .fontWeight(.bold)
                        .font(.system(size:20))
                    
                    TextField("답을 입력하세요.", text: $answer2)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                        .frame(width: 400)
                    
                    Button(action: checkAnswer2) {
                        Text("제출")
                            .font(.title2)
                            .padding()
                            .cornerRadius(10)
                    }
                    
                    Text(resultMessage2)
                        .font(.title2)
                        .foregroundColor(resultMessage2 == "정답입니다!" ? .green : .red)
                        }
                Group{
                    //Quiz 3
                    Text("Q3. 오픈소스와 결합 - 연결되었을 경우, 연결된 소스코드까지 공개하는 오픈소스 라이선스 패밀리 유형은? (ex: GPL2.0)")
                        .fontWeight(.bold)
                        .font(.system(size:20))
                    
                    TextField("답을 입력하세요.", text: $answer3)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                        .frame(width: 400)
                    
                    Button(action: checkAnswer3) {
                        Text("제출")
                            .font(.title2)
                            .padding()
                            .cornerRadius(10)
                        
                    }
                    Text(resultMessage3)
                        .font(.title2)
                        .foregroundColor(resultMessage3 == "정답입니다!" ? .green : .red)
                        }
                    
                    
                        }
                    }
                }
            func checkAnswer1() {
            if answer1 == "지식재산권, 라이선스, 보안취약점"
                {
                resultMessage1 = "정답입니다!"
                }
            else
                {
                resultMessage1 = "틀렸습니다. 다시 시도하세요."
                }
            }

            func checkAnswer2() {
            if answer2 == "저작권, 특허권, 상표권, 영업비밀"
                {
                resultMessage2 = "정답입니다!"
                }
            else
                {
                resultMessage2 = "틀렸습니다. 다시 시도하세요."
                }
            }

            func checkAnswer3() {
            if answer3 == "Strong Reciprocal Lic"
                {
                resultMessage3 = "정답입니다!"
                }
            else
                {
                resultMessage3 = "틀렸습니다. 다시 시도하세요."
                }
            }

        }


struct Quiz_Previews: PreviewProvider {
    static var previews: some View {
        Quiz()
    }
}
