//
//  ContentView.swift
//  CustomView
//
//  Created by bellossimo on 2020/05/04.
//  Copyright © 2020 bellossimo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        VStack {
//            VStack {
//                Text("Text 1")
//                    .font(.custom("Copperplate", size: 70))
//                Text("Text 2")
//                    .padding()
//                    .border(Color.black)
//                MyHStackView()
//                    .font(.largeTitle)
//            }
//            Text("Text 5")
//                .modifier(StandardTitle())
//        }
//        VStack {
//            Button(action: buttonPressed) {
//                Text("Click Me")
//            }
//            Button(action: {
//                print("hello")
//            }) {
//                Image(systemName: "square.and.arrow.down")
//            }
//        }
//        Text("Hello World")
//        .onAppear(perform: {
//            // 뷰가 나타날 때 수행되는 코드
//        })
//        .onDisappear(perform: {
//            // 뷰가 사라질 때 수행되는 코드
//        })
        MyVStack {
            Text("Text 1")
            Text("Text 2")
            HStack {
                Image(systemName: "star.fill")
                Image(systemName: "star.fill")
                Image(systemName: "star")
            }
        }
    }
    
    func buttonPressed() {
        // 동작할 코드가 온다.
    }
}

struct MyVStack<Content: View>: View {
    let content: () -> Content
    init(@ViewBuilder content: @escaping() -> Content) {
        self.content = content
    }
    
    var body: some View {
        VStack(spacing: 10) {
            content()
        }.font(.largeTitle)
    }
}

//struct MyVStack: View {
//    var body: some View {
//        VStack(spacing: 10) {
//            Text("Text Item 1")
//            Text("Text Item 2")
//            Text("Text Item 2")
//        }.font(.largeTitle)
//    }
//}

struct MyHStackView: View {
    var body: some View {
        HStack {
            Text("Text 3")
            Text("Text 4")
        }
    }
}

struct StandardTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .background(Color.white)
            .border(Color.gray, width: 0.2)
            .shadow(color: Color.black, radius: 5, x: 0, y: 5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
