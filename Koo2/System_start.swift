//
//  System_start.swift
//  p
//
//  Created by 구유진 on 2024/05/23.
//

import SwiftUI


struct System_start: View {
    var body: some View {
       
        Image("Teacher")
            .resizable()
            .frame(width: 160, height: 270)
            .offset(x: -300, y: 63)
        Text("WElCOME!")
            .offset(x: 70, y: -230)
            .font(.system(size:65))
            .fontWeight(.bold)
            .foregroundColor(.blue)
        Text("오픈소스 라이선스 교육용 프로그램에 오신 여러분들 환영합니다!")
            .offset(x: 70, y: -200)
            .font(.system(size:18))
            .fontWeight(.bold)
        Text("이 프로그램은 오픈소스 라이선스 하에 배포됩니다.")
            .offset(x: 70, y: -180)
            .font(.system(size:18))
        Text("오픈소스 라이선스 교육을 통해 더 나은 소프트웨어를 만들어 나갈 수 있습니다.")
            .offset(x: 70, y: -160)
            .font(.system(size:18))
        Text("여러분의 참여와 성취를 기대하며, 함께 멋진 여정을 시작해 보아요!")
            .offset(x: 70, y: -140)
            .font(.system(size:18))
        Text("학습을 시작하려면 Chapter1을 누르시오.")
            .offset(x: 70, y: -120)
            .foregroundColor(.blue)
        
       
            }
        }
    
    
    struct System_start_Previews: PreviewProvider {
        static var previews: some View {
            System_start()
        }
    }

