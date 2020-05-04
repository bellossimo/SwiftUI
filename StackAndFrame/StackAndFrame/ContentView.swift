//
//  ContentView.swift
//  StackAndFrame
//
//  Created by bellossimo on 2020/05/04.
//  Copyright © 2020 bellossimo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        VStack {
//            HStack {
//                Image(systemName: "goforward.10")
//                Image(systemName: "goforward.15")
//                Image(systemName: "goforward.30")
//            }
//            VStack {
//                Image(systemName: "goforward.10")
//                Image(systemName: "goforward.15")
//                Image(systemName: "goforward.30")
//            }
//        }
//        VStack(alignment: .center, spacing: 15) {
//            Text("Financial Results")
//                    .font(.title)
//
//            HStack(alignment: .top) {
//                Text("Q1 Sales")
//                    .font(.headline)
//
//                Spacer()
//
//                VStack(alignment: .leading) {
//                    Text("January")
//                    Text("February")
//                    Text("March")
//                }
//
//                Spacer()
//
//                VStack(alignment: .leading) {
//                    Text("$10000")
//                    Text("$200")
//                    Text("$3000")
//                }
//                .padding(5)
//            }
//            .padding(5)
//        }
//        .padding(5)
//        VStack {
//            Group {
//                Text("Sample Text")
//                Text("Sample Text")
//                Text("Sample Text")
//                Text("Sample Text")
//                Text("Sample Text")
//                Text("Sample Text")
//            }
//
//            Group {
//                Text("Sample Text")
//                Text("Sample Text")
//                Text("Sample Text")
//                Text("Sample Text")
//                Text("Sample Text")
//                Text("Sample Text")
//            }
//        }
//        HStack {
//            Image(systemName: "airplane")
//            Text("Flight times:")
//            Text("London").layoutPriority(1)
//            }.font(.largeTitle).lineLimit(1)
//        Text("Hello World, hor are you?")
//            .font(.largeTitle)
//            .border(Color.black)
//            .frame(minWidth: 0, maxWidth: 300, minHeight: 100, maxHeight: 100, alignment: .center)
//        Text("Hello World, hor are you?")
//        .font(.largeTitle)
//        .border(Color.black)
//        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
//        .border(Color.black, width: 5)
        GeometryReader { geometry in
            VStack {
                Text("Hello World, how are you?")
                    .font(.largeTitle)
                    .frame(width: geometry.size.width / 2, height: (geometry.size.height / 4) * 3)
                Text("Goodbye World")
                    .font(.largeTitle)
                    .frame(width: geometry.size.width / 3, height: geometry.size.height / 4)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
