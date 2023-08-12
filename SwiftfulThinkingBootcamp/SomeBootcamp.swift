//
//  TextBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Ravin on 2023/8/12.
//
// 这个教程的链接：
/* https://www.bilibili.com/video/BV1KY411f7in?p=6&spm_id_from=pageDriver&vd_source=21d8864dc912c7f9d98ed55f07daea26
*/

import SwiftUI

struct TextBootcamp: View {
    
    let backgroundColor: Color = Color.red
    
    var body: some View {
        // -------------------------------
        // ------------- 文字 -------------
        // -------------------------------
        
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .font(.title)
//            .fontWeight(.heavy)
//            .foregroundColor(Color(red: 0.263, green: 0.448, blue: 0.797))
//            .multilineTextAlignment(.center)
//            // .lineLimit(nil)
//            .padding()
//            .underline()
////            .strikethrough(true, color: Color.green)
////            .font(.system(size: 68, design: .serif))
////            .baselineOffset(10) // 行间距
////            .kerning(10) // 字间距
////            .multilineTextAlignment(.leading)
//            .foregroundColor(.red)
////            .frame(width:200, height: 100, alignment: .leading)
//            .minimumScaleFactor(0.1)
        
        // -------------------------------
        // ------------- 图形 -------------
        // -------------------------------
        
//        Circle()
//        Ellipse() // 椭圆
//        Capsule(style: .circular)
//        Rectangle()
//        RoundedRectangle(cornerRadius: 15)
        
//            .fill(Color.cyan)
//            .foregroundColor(.pink)
//            .stroke(Color.cyan, lineWidth: 40)
//            .stroke(style: StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [10]))
        
//            .trim(from: 0.2, to: 1.0)
//            .stroke(Color.cyan, lineWidth: 50)
        
        // -------------------------------
        // ------------- 颜色 -------------
        // -------------------------------
//
//        RoundedRectangle(cornerRadius: 13)
//            .fill(
////                Color.cyan
////                Color(UIColor.lightGray)
//                Color("myColor")
//
//
//            )
//            .frame(width: 300, height: 200, alignment: .center)
//            .shadow(color:Color.cyan.opacity(0.3) , radius: 10, x:-20, y: -20)
        
        // -------------------------------
        // ------------- 渐变 -------------
        // -------------------------------
        
//        RoundedRectangle(cornerRadius: 13)
//            .fill(
////                Color.red
//                LinearGradient(gradient: Gradient(colors: [Color.blue, Color.cyan]),
//                               startPoint: .leading, endPoint: .trailing)
//                // 也可以用 RadialGradient, AngularGradient
//            )
//            .frame(width: 300, height: 200)
        
        // -------------------------------
        // ------------- 图标 -------------
        // -------------------------------
        
//        Image(systemName: "person.crop.rectangle.badge.plus")
//            .renderingMode(.original)
////            .resizable()
////            .aspectRatio(contentMode: .fill)
//            .font(.system(size:200))
////            .foregroundColor(Color.cyan)
////            .frame(width: 300, height: 300, alignment: .center)
//
        
        // -------------------------------
        // ------------- 图像 -------------
        // -------------------------------
        
        // #7 第七节课跳过
        
        // -------------------------------
        // ------------- frame -----------
        // -------------------------------
        
//
//        Text("谈未来太遥远 我们只争早夕")
//            .background(Color.gray)
////            .frame(width: 300, height: 100, alignment: .leading)
//            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
//            .background(Color.cyan)
//
        
        // -------------------------------
        // ----------- background --------
        // ------------- overlay ---------
        // -------------------------------
        
//        Text("谈未来太遥远 我们只争早夕")
//            .frame(width: 300, height: 300, alignment: .center)
//            .background(
////                Color.red
////                LinearGradient(gradient: Gradient(colors: [Color.blue, Color.cyan]),
////                               startPoint: .leading, endPoint: .trailing)
//                Circle()
//                    .fill(Color.blue)
//            )
//            .frame(width: 400, height: 400, alignment: .center)
//            .background(
//                Circle()
//                    .fill(Color.green))
        
        // -------------------------------
        // ------------- VHZStack --------
        // -------------------------------
        
        // V -> Vertical
        // H -> Horizontal
        // Z -> zIndex (back to front)

//        VStack{
//
//            //        VStack(alignment: .center, spacing: 12){
//            //            Rectangle()
//            //                .fill(Color.cyan)
//            //                .frame(width: 100, height: 100)
//            //
//            //            Rectangle()
//            //                .fill(Color.cyan)
//            //                .frame(width: 100, height: 100)
//            //
//            //            Rectangle()
//            //                .fill(Color.cyan)
//            //                .frame(width: 100, height: 100)
//            //        }
//
//            VStack(alignment: .center, spacing: 10){
//                Text("5")
//                    .font(.largeTitle)
//                    .underline()
//
//                Text("Items in your cart")
//                    .font(.caption)
//                    .foregroundColor(.gray)
//            }
//        }
        
        // -------------------------------
        // ------------- padding ---------
        // -------------------------------
        
        // -------------------------------
        // ------------- spacer ----------
        // -------------------------------
        
        // -------------------------------
        // ------- init() & enums --------
        // -------------------------------
        
        
//        VStack{
//            Text("5")
//                .foregroundColor(backgroundColor)
//                .font(Font.largeTitle)
//                .underline()
//            Text("Apples")
//                .font(Font.headline)
//                .foregroundColor(Color.white)
//        }
//        .frame(width: 150, height: 150, alignment: .center)
//        .background(Color.cyan)
//        .cornerRadius(15)
        
        // 说实话有点看不懂，可能和c++里面的构造函数差不多？
         
        // -------------------------------
        // ---------- ForEach() ----------
        // -------------------------------
        
//        VStack{
//            ForEach(1..<30) { index in
//                Text("\(index)个欣欣～～")
//            }
//        }
        
        // -------------------------------
        // --------- ScrollView ----------
        // -------------------------------
        
        ScrollView(.vertical, showsIndicators: false){
            VStack{
                ForEach(1..<9999) { index in
                    Text("\(index)个欣欣～～")
                }
            }
            
        }
        // 这里有一些模版，在视频最后，应该比较实用。
        
        
    }
        
    
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
//        TextBootcamp(backgroundColor: .purple)
    }
}
















