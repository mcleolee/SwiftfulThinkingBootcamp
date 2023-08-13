//
//  26_50_Bootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Ravin on 2023/8/13.
//

import SwiftUI

struct _26_50_Bootcamp: View {
    
    @State var isAnimated: Bool = false
    @State var showView: Bool = false
    
    @State var showSheet:Bool = false
    
    @State var currentUserName:String?
    @AppStorage("name") var currentUserName_AppStorage:String?
    
    var body: some View {
        
        // --------------------------------
        // ---------- Animation -----------
        // --------------------------------
        
//        VStack{
//            Button("button"){
//                withAnimation(
//                    Animation
//                        .default
//                        .delay(0.01)
//                        .repeatCount(5, autoreverses: true) // 也可以forever
//
//                ){
//                    isAnimated.toggle()
//                }
//            }
//            Spacer()
//            RoundedRectangle(cornerRadius: isAnimated ? 35 : 15)
//                .fill(isAnimated ? .cyan : .green)
//                .frame(width: isAnimated ? 100 : 300,
//                       height: isAnimated ? 100 : 300)
//                .rotationEffect(Angle(degrees: isAnimated ? 90 : 0))
//                .offset(y: isAnimated ? 300 : 0)
//                .animation(.default)
//            Spacer()
//
//        }
        
        // ---------------------------------------
        // ---------- Animation Curves -----------
        // ---------------------------------------
        // 为动画自定义调速
        
        
        // ------------------------------------
        // ---------- .transition() -----------
        // ------------------------------------
        // 一些动画和过度，很实用
        
//
//        ZStack(alignment: .bottom){
//
//            VStack{
//                Button("Button"){
//                    showView.toggle()
//                }
//                Spacer()
//            }
//
//            if showView{
//                RoundedRectangle(cornerRadius: 20)
//                    .frame(height: UIScreen.main.bounds.height*0.6)
////                    .opacity(showView ? 1 : 0) //不用这个而用transition
//                    .transition(.move(edge: . bottom))
//                    .animation(.easeInOut)
//            }
//
//
//        }
        
        // -------------------------------------------------
        // ---------- .sheet() .fullScreenCover() ----------
        // -------------------------------------------------
        
//        ZStack{
//            Color.green
//                .edgesIgnoringSafeArea(.all)
//
//            Button(action:{
//                showSheet.toggle()
//            },
//            label: {
//                Text("Button")
//                    .foregroundColor(.green)
//                    .font(.headline)
//                    .padding(20)
//                    .background(Color.white.cornerRadius(13))
//            })
//            // 一个view里只能有一个sheet！！！
//            // 在content里不要加任何的条件语句
//            .fullScreenCover(isPresented: $showSheet, content: {SecondScreen()})
////            .sheet(isPresented: $showSheet, content: {SecondScreen()})
//
//        }
        
        // ---------------------------------------------------------------
        // ---------- .sheet() vs .transition() vs .animation() ----------
        // ---------------------------------------------------------------
        
        
        // #31
        // ---------------------------------------------------------------
        // ---------------------- NavigationView() -----------------------
        // ---------------------------------------------------------------
        // 在iphone和ipad上可能显示不一样
        
//        NavigationView(){
//            // 在NavigationView()中不要使用NavigationView()了，应该用NavigationLink()
//            ScrollView{
//
//                NavigationLink("Hello world", destination: Text("Second screen"))
//                NavigationLink("Hello world", destination: MyOtherScreen())
//
//                Text("qwq")
//                Text("qwq")
//                Text("qwq")
//            }
//            .navigationTitle("All Inboxes")
//            .navigationBarTitleDisplayMode(.automatic)
//
//
//        }
        
        // #52
        // ---------------------------------------------------------------
        // ---------------------- AppStorage() -----------------------
        // ---------------------------------------------------------------
        
        VStack(spacing: 20){
//            Text(currentUserName ?? "add name here")
            Text(currentUserName_AppStorage ?? "add name here")
            
//            if let name = currentUserName{
//                Text(name)
//            }
            
            if let name = currentUserName_AppStorage{
                            Text(name)
                        }
            
            Button("Save".uppercased()){
                let name: String = "Emily"
                currentUserName_AppStorage = name
//                currentUserName = name
//                UserDefaults.standard.set(name, forKey: "name")
            }
        }
//        .onAppear(){
//            currentUserName = UserDefaults.standard.string(forKey: "name")
//        }
        
  
        
    }
}

// ---------------------------------------------------------------
// ---------------------- NavigationView() -----------------------
// ---------------------------------------------------------------

struct MyOtherScreen:View{
    var body: some View{
        ZStack{
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("GREEN!")
        }
    }
}




// -------------------------------------------------
// ---------- .sheet() .fullScreenCover() ----------
// -------------------------------------------------
struct SecondScreen: View{
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View{
        ZStack(alignment: .topLeading){
            Color.cyan
                .edgesIgnoringSafeArea(.all)
            
            Button(action:{
                presentationMode.wrappedValue.dismiss()
            },
            label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            })
            
        }
    }
}

struct _26_50_Bootcamp_Previews: PreviewProvider {
    static var previews: some View {
        _26_50_Bootcamp()
//        SecondScreen()
    }
}
