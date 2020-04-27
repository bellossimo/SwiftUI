//
//  ContentView.swift
//  DemoProject
//
//  Created by bellossimo on 2020/04/27.
//  Copyright © 2020 bellossimo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
                .font(.largeTitle)
                .foregroundColor(Color.red)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView()
        
//        Group {
//            ContentView()
//                .previewDevice(PreviewDevice(rawValue: "iPhone SE"))
//                .previewDisplayName("iPhone SE")
//            
//            ContentView()
//                .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
//                .previewDisplayName("iPhone 11")
//        }
        
//        ContentView()
//            .previewDevice(PreviewDevice(rawValue: "iPhone SE"))
//            .previewDisplayName("iPhone SE")
//            .environment(\.colorScheme, .dark)
    }
}
