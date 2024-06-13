import SwiftUI

struct ContentView: View {
    enum NavigationItem {
        case START
        case Chapter1
        case Chapter2
        case Chapter3
        case Chapter4
        case Chapter5
        case Chapter6
        case GPTChat
    }
    
    @State private var selection: Set<NavigationItem> = [.START]
    @State private var isChatPresented: Bool = false

    var sidebar: some View {
        List(selection: $selection) {
            Image("OTPLOGO")
                .resizable()
                .frame(width: 100, height: 40)
            
            // START 버튼
            NavigationLink(destination: System_start()) {
                Label("   START", systemImage: "text.book.closed.fill")
                    .fontWeight(.bold)
                    .font(.system(size: 20))
                    .padding()
            }
            .accessibility(label: Text("   START"))
            .tag(NavigationItem.START)
            
            // Chapter 1
            NavigationLink(destination: notion()) {
                Label(" Chapter 1", systemImage: "list.bullet")
                    .fontWeight(.bold)
                    .font(.system(size: 20))
                    .padding()
            }
            .accessibility(label: Text("Chapter 1"))
            .tag(NavigationItem.Chapter1)
            
            // Chapter 2
            NavigationLink(destination: notion_2()) {
                Label(" Chapter 2", systemImage: "list.bullet")
                    .fontWeight(.bold)
                    .font(.system(size: 20))
                    .padding()
            }
            .accessibility(label: Text("Chapter 2"))
            .tag(NavigationItem.Chapter2)
                   
            // Chapter 3
            NavigationLink(destination: notion_3()) {
                Label(" Chapter 3", systemImage: "list.bullet")
                    .fontWeight(.bold)
                    .font(.system(size: 20))
                    .padding()
            }
            .accessibility(label: Text("Chapter 3"))
            .tag(NavigationItem.Chapter3)
            
            // Chapter 4
            NavigationLink(destination: Quiz()) {
                Label(" Chapter 4", systemImage: "list.bullet")
                    .fontWeight(.bold)
                    .font(.system(size: 20))
                    .padding()
            }
            .accessibility(label: Text("Chapter 4"))
            .tag(NavigationItem.Chapter4)
            
            // Chapter 5
            NavigationLink(destination: System_start()) {
                Label(" Chapter 5", systemImage: "list.bullet")
                    .fontWeight(.bold)
                    .font(.system(size: 20))
                    .padding()
            }
            .accessibility(label: Text("Chapter 5"))
            .tag(NavigationItem.Chapter5)
            
            
            NavigationLink(destination: System_start()) {
                Label(" Chapter 6", systemImage: "list.bullet")
                    .fontWeight(.bold)
                    .font(.system(size: 20))
                    .padding()
            }
            .accessibility(label: Text("Chapter 6"))
            .tag(NavigationItem.Chapter6)
            
            // GPTChat
            Button(action: {
                isChatPresented.toggle()
            }) {
                Label("   Chatbot", systemImage: "bubble.left")
                    .fontWeight(.bold)
                    .font(.system(size: 20))
                    .padding()
            }
            .accessibility(label: Text("GPT"))
            .tag(NavigationItem.GPTChat)
        }
        .listStyle(SidebarListStyle())
    }
    
    var body: some View {
        NavigationView {
            sidebar
            VStack {
                Text("OPEN SOURCE LICENSE")
                    .font(.system(size: 70))
                    .foregroundColor(.blue)
                    .fontWeight(.bold)
                Text("TEACHING PROGRAM")
                    .font(.system(size: 60))
                    .foregroundColor(.primary)
                    .fontWeight(.bold)
                    .offset(x: 0, y: -8)
                Text("오픈소스 라이선스 교육용 프로그램")
                    .font(.system(size: 35))
                    .foregroundColor(.primary)
                    .offset(x: 0, y: -10)
                    .fontWeight(.bold)
                Text("시작 하려면 왼쪽 상단의 START 버튼을 누르시오.")
                    .font(.system(size: 10))
                    .offset(x: 0, y: 5)
                    .foregroundColor(.blue)
                Image("MAINLOGO")
                    .resizable()
                    .frame(width: 300, height: 300)
                    .offset(x: 0, y: 10)
            }
        }
        .overlay(
            GeometryReader { geometry in
                Chat()
                    .frame(width: 300, height: 400)
                    .background(Color.white)
                    .cornerRadius(20)
                    .shadow(radius: 10)
                    .padding()
                    .opacity(isChatPresented ? 1 : 0)
                    .offset(x: isChatPresented ? 0 : geometry.size.width, y: isChatPresented ? 0 : geometry.size.height)
                    .animation(.easeInOut, value: isChatPresented)
                    .onTapGesture {
                        isChatPresented.toggle()
                    }
            }, alignment: .bottomTrailing
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

