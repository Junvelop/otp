//
//  notion.swift
//  p
//
//  Created by 구유진 on 2024/05/23.
//

import SwiftUI

struct notion: View {
    var body: some View {
        ScrollView {
            VStack{
                
                Spacer()
                
                Text("Part1. 오픈소스란 무엇일까? ")
                    .fontWeight(.bold)
                    .font(.system(size:55))
                    .foregroundColor(Color(red: 0.07, green: 0.046, blue: 0.626))
                    .multilineTextAlignment(.leading)
                
                (Text("오픈소스")
                    .foregroundColor(Color.blue)
                    .font(.system(size:27))
                    .fontWeight(.bold)
                 +
                 
                 Text("  :  소프트웨어 등을 만들 때 그 소프트웨어가 어떻게 만들어졌는지 알 수 있도록 소스코드를 공개한 것. 소스코드를 알면 그 프로그램, 소프트웨어가 어떻게 구성되어 있는지 알 수 있다. 또한, 이것을 기초하여 변형, 응용이 가능하다."))
                .font(.system(size: 20))
                .padding(.top, 30)
                .fontWeight(.bold)
                .multilineTextAlignment(.leading)
                
                Spacer()
                
                (Text("오픈소스 SW")
                    .foregroundColor(Color.blue)
                    .font(.system(size:27))
                 +
                 Text("  :  이러한 소프트웨어의 구체적인 예시로서 개념에 속하는 실제 SW"))
                
                .padding(.top, 40)
                .font(.system(size: 20))
                .fontWeight(.bold)
                .multilineTextAlignment(.leading)
                
                Image("OPENSOURCE")
                    .resizable()
                    .frame(width: 230, height: 300)
                    .offset(x:0, y:20)
                
                Group{
                    Text("· 다양한 오픈소스 SW 종류 ")
                        .padding(.top, 90)
                        .font(.system(size:30))
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                    
                    Text("클릭 해보세요. 해당 오픈소스 사이트로 이동합니다.")
                        .padding(.top, 10)
                        .font(.system(size:15))
                        .foregroundColor(Color.blue)
                    
                    Group{
                        //Link 해당 사이트로 이동
                        Link("Linux", destination: URL(string: "https://www.linux.org/")!)
                            .foregroundColor(.blue)
                            .padding(.top, 10)
                            .font(.system(size:27))
                            .fontWeight(.bold)
                        
                        Link("Apache", destination: URL(string: "https://www.nic.funet.fi/pub/sci/bio/life/insecta/lepidoptera/ditrysia/gelechioidea/depressariidae/depressariinae/apachea/")!)
                            .foregroundColor(.blue)
                            .padding(.top, 15)
                            .font(.system(size:27))
                            .fontWeight(.bold)
                        
                        Link("Mozila FireFox", destination: URL(string: "https://www.mozilla.org/ko/firefox/")!)
                            .foregroundColor(.blue)
                            .padding(.top, 20)
                            .font(.system(size:27))
                            .fontWeight(.bold)
                        
                        Link("Postgre SQL", destination: URL(string: "https://www.postgresql.org/")!)
                            .foregroundColor(.blue)
                            .padding(.top, 25)
                            .font(.system(size:27))
                            .fontWeight(.bold)
                        
                        
                        Link("GNU Project", destination: URL(string: "https://www.gnu.org/home.en.html")!)
                            .foregroundColor(.blue)
                            .padding(.top, 30)
                            .font(.system(size:27))
                            .fontWeight(.bold)
                        
                        Link("Android OS", destination: URL(string: "https://www.android.com/")!)
                            .foregroundColor(.blue)
                            .padding(.top, 35)
                            .font(.system(size:27))
                            .fontWeight(.bold)
                        
                        Link("MySQL", destination: URL(string: "https://www.mysql.com/")!)
                            .foregroundColor(.blue)
                            .font(.system(size:27))
                            .padding(.top, 40)
                            .fontWeight(.bold)
                        
                        Group{
                        Link("OpenOffice", destination: URL(string: "https://www.openoffice.org/")!)
                            .foregroundColor(.blue)
                            .padding(.top, 45)
                            .font(.system(size:27))
                            .fontWeight(.bold)
                        
                        Link("LibreOffice", destination: URL(string: "https://ko.libreoffice.org/")!)
                            .foregroundColor(.blue)
                            .padding(.top, 50)
                            .font(.system(size:27))
                            .fontWeight(.bold)
                      
                            Link("Python", destination: URL(string: "https://www.python.org/")!)
                                .foregroundColor(.blue)
                                .padding(.top, 55)
                                .font(.system(size:27))
                                .fontWeight(.bold)
                            
                            Link("Java", destination: URL(string: "https://www.java.com/ko/")!)
                                .foregroundColor(.blue)
                                .padding(.top, 60)
                                .font(.system(size:27))
                                .fontWeight(.bold)
                            
                            Text("학습을 모두 마치셨습니다. 다음 챕터로 이동해주세요.")
                                .font(.system(size:15))
                                .padding(.top, 70)
                                .foregroundColor(.blue)
                            
                        }
                    
                       Spacer()
                    }
                }
            }
        }
    }
}
        
        
        
        struct notion_Previews: PreviewProvider {
            static var previews: some View {    
                notion()
            }
            
        }
    
    

