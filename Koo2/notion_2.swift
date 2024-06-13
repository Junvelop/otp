//
//  notion_2.swift
//  p
//
//  Created by 구유진 on 2024/05/28.
//

import SwiftUI

struct notion_2: View {
    var body: some View {
        ScrollView {
        VStack{
            Spacer()
        Text("Part2. Free SW / Open Source SW란 ?")
            .fontWeight(.bold)
            .font(.system(size:55))
            .foregroundColor(Color(red: 0.07, green: 0.046, blue: 0.626))
        
        
        ( Text("Free SW")
            .foregroundColor(Color.blue)
            .font(.system(size:27))
            .fontWeight(.bold)
          
          +
          Text("  :  1. 자유 소프트웨어는 실행, 복사, 배포, 연구 수정의 자유가 있으며 사용자의 자유를 보장해야함. (SW의 자유 강조)") )
        .font(.system(size: 20))
        .fontWeight(.bold)
        .multilineTextAlignment(.leading)
        .padding(.top, 47)
    }
    Group{
        Text("  2. 오픈소스 소프트웨어와의 차이는 소스코드의 공개과 자유로운 수정, 재배포를 강조하나, 라이선스에 따라 사용자들에게 일부 제한을 부과함. (SW의 소스 코드 공개, 개발 방법 강조)")
            .font(.system(size: 20))
            .fontWeight(.bold)
            .multilineTextAlignment(.leading)
            .padding(.top, 5)
        
        Image("FREE!")
            .resizable()
            .frame(width: 1000, height: 500)
            .padding(.top, 75)
        
        Text("· 지식재산권을 통한 오픈소스 보호 고려사항  ")
            .font(.system(size:30))
            .fontWeight(.bold)
            .foregroundColor(.gray)
            .padding(.top, 90)
        
        Text(" 1. 오픈소스는 지식재산권으로써 저작권, 특허권, 상표권, 영업비밀로 보호된다는 것을 명심")
            .font(.system(size:25))
            .fontWeight(.bold)
            .padding(.top, 8)
            .foregroundColor(Color(red: 0.07, green: 0.046, blue: 0.626))
        
        
        Text("[ 소프트웨어에 인정되는 지식재산권 4유형 정의 ]")
            .font(.system(size:20))
            .fontWeight(.bold)
            .padding(.top, 15)
        
        ( Text("저작권")
            .foregroundColor(Color.blue)
            .font(.system(size:27))
          +
          Text("  :  사람의 시상이나 감정을 문자, 소리, 영상 등 다양하게 표현된 표현물에 '창작성'이 있는 저작물에 대한 소유권을 인정") )
        
        .padding(.top, 20)
        .font(.system(size: 20))
        .fontWeight(.bold)
        
        ( Text("특허권")
            .foregroundColor(Color.blue)
            .font(.system(size:27))
          +
          Text("  :  기술의 발전을 촉진하여 산업 발전 이바지함을 목적으로 사점 독점 보장 제도 출원일로부터 1년 6개월 후 공개되며 선원주의로 먼저 출원한 자의 특허 인정") )
        
        .padding(.top, 23)
        .font(.system(size: 20))
        .fontWeight(.bold)
        
        ( Text("상표권")
            .foregroundColor(Color.blue)
            .font(.system(size:27))
          +
          Text("  :  자신과 타인의 상품을 식별하기 위해 사용하는 기호, 문자, 도형 등 표현 방식에 상관없이 상품의 출처를 나타내는 모든 것") )
        
        .padding(.top, 26)
        .font(.system(size: 20))
        .fontWeight(.bold)
        
        ( Text("영업비밀")
            .foregroundColor(Color.blue)
            .font(.system(size:27))
          +
          Text("  :  타인의 상표 부정사용 등의 부정경쟁 행위와 영업비밀을 침해나는 행위를 방지하여 건전한 거래질서 유지   ") )
        
        .padding(.top, 9)
        .font(.system(size: 20))
        .fontWeight(.bold)
    }
            Group{
                Text(" 2. 오픈소스 라이선스는 자유로운 사용을 위한 사용허가서, 사용을 위한 계약 사항(의무사항) 준수가 필요")
                    .font(.system(size:25))
                    .fontWeight(.bold)
                    .padding(.top, 35)
                    .foregroundColor(Color(red: 0.07, green: 0.046, blue: 0.626))
                
                ( Text("오픈소스 라이선스란? ")
                    .foregroundColor(Color.blue)
                    .font(.system(size:25))
                  +
                  Text("  :  오픈소스의 자유로운 사용, 복제, 배포와 함께 제작자의 지식 재산권 권리 보호를 위한 권리와 범위를 명시적으로 나타낸 허가서") )
                .padding(.top, 20)
                .font(.system(size: 20))
                .fontWeight(.bold)
                
                Text("·오픈소스 라이선스를 통한 생태계 선순환")
                    .padding(.top, 25)
                    .foregroundColor(Color.blue)
                    .font(.system(size:25))
                    .fontWeight(.bold)
                
                
                Text(" - 자유롭게 소스코드를 사용, 수정, 배포 ")
                    .fontWeight(.bold)
                    .font(.system(size: 20))
                    .padding(.top, 20)
                
                Text(" - 라이선스를 통해 프로그램 독점 방지")
                    .fontWeight(.bold)
                    .font(.system(size: 20))
                    .padding(.top, 22)
                
                Text(" - 오픈소스 라이선스는 일정 수준의 의무사항을 포함")
                    .fontWeight(.bold)
                    .font(.system(size: 20))
                    .padding(.top, 23)
                
                Image("Line")
                    .resizable()
                    .frame(width: 550, height: 400)
            }
            Group{
                Text(" 3. 보안 취약점은 실제 공격 구현이 가능한 오류로써 관리되지 못한 상태로 방치되고 있어 위험을 초래")
                    .font(.system(size:25))
                    .fontWeight(.bold)
                    .padding(.top, 30)
                    .foregroundColor(Color(red: 0.07, green: 0.046, blue: 0.626))
                Image("risk")
                    .resizable()
                    .frame(width: 1000, height: 500)
                
                Text("학습을 모두 마치셨습니다. 다음 챕터로 이동해주세요.")
                    .font(.system(size:15))
                    .padding(.top, 40)
                    .foregroundColor(.blue)
                
                Spacer()
                
               
                }
            }
        }
    }


struct notion_2_Previews: PreviewProvider {
    static var previews: some View {
        notion_2()
    }
}
