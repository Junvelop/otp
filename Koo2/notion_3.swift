//
//  notion_3.swift
//  p
//
//  Created by 구유진 on 2024/06/04.
//

import SwiftUI

struct notion_3: View {
    var body: some View {
        ScrollView {
            VStack{
                Spacer()
                
                Text("Part3. Open SW 공급망")
                    .fontWeight(.bold)
                    .font(.system(size:55))
                    .foregroundColor(Color(red: 0.07, green: 0.046, blue: 0.626))
                
                Spacer()
                Spacer()
                
                Text(" 1. SW 공급망 구성요소")
                    .foregroundColor(Color.blue)
                    .font(.system(size:27))
                    .fontWeight(.bold)
                
                Image("공급망")
                    .resizable()
                    .frame(width:900, height: 185)
                
                Spacer()
                Spacer()
                
                Group{
                    Text(" 2. 하나의 취약점과 공격으로 퍼질 수 있는 SW 공급망 피해")
                        .foregroundColor(Color.blue)
                        .font(.system(size:27))
                        .fontWeight(.bold)
                    
                    Link("- SolarWinds", destination: URL(string: "https://www.solarwinds.com/")!)
                        .foregroundColor(.gray)
                        .font(.system(size:20))
                        .fontWeight(.bold)
                    
                    
                    Image("SON")
                    
                    
                    Text("2020년 러시아 사이버 범죄그룹 Nobelium 공격 18,000여개 조직에 악성 코드 감염")
                    
                        .font(.system(size:20))
                        .fontWeight(.bold)
                    
                    Link("- LOG4J", destination: URL(string: "https://logging.apache.org/log4j/2.x/")!)
                        .foregroundColor(.gray)
                        .font(.system(size:20))
                        .fontWeight(.bold)
                    
                    
                    Image("LOG")
                        .resizable()
                        .frame(width:410, height: 100)
                    
                    Text("2021년 보안 취약점 발견으로 모든 서버에 영향을 미칠 수 있는 취약점으로 분류")
                        .font(.system(size:20))
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    
                }
                
                Group{
                    Spacer()
                    Spacer()
                    Spacer()
                    
                   Text(" 3. SW 공급망 보안을 위한 방법 -> 모든 구성 SW의 “무결성”목적의")
                        .foregroundColor(Color.black)
                        .font(.system(size:27))
                        .fontWeight(.bold)
                    
                    + Text(" 제로트러스트 ")
                        .foregroundColor(Color.blue)
                        .font(.system(size:27))
                        .fontWeight(.bold)
                    
                    Image("공급망 환경")
                        .resizable()
                        .frame(width:700, height:500)
                    
                    Text("제로 트러스트 보안 아키텍처는 신뢰른 취약점으로 인식, 모든 구성요소는 독립적으로 신뢰성을 확보해야한다.")
                         .foregroundColor(Color.black)
                         .font(.system(size:20))
                         .fontWeight(.bold)
                                    
                    Image("체인")
                        .resizable()
                        .frame(width:1000, height:500)
                    
                    
                        }
                    }
                }
            }
        }
    

struct notion_3_Previews: PreviewProvider {
    static var previews: some View {
        notion_3()
    }
}
