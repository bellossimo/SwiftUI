//
//  ContentView.swift
//  StackAlign
//
//  Created by bellossimo on 2020/05/05.
//  Copyright © 2020 bellossimo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        VStack(alignment: .trailing) {
//            Text("This is some text")
//            Text("This is some longer text")
//            Text("This is short")
//        }
//        HStack(alignment: .lastTextBaseline, spacing: 20) {
//            Text("This is some text").font(.largeTitle)
//            Text("This is some much longer text").font(.body)
//            Text("This is short").font(.headline)
//        }
//        VStack(alignment: .leading) {
//            Rectangle()
//                .foregroundColor(Color.green)
//                .frame(width: 120, height: 50)
//            Rectangle()
//                .foregroundColor(Color.red)
//                .alignmentGuide(.leading, computeValue: {
//                    d in d[HorizontalAlignment.trailing] + 20
//                })
//                .frame(width: 200, height: 50)
//            Rectangle()
//                .foregroundColor(Color.blue)
//                .frame(width: 180, height: 50)
//        }
//        HStack(alignment: .oneThird) {
//            Rectangle()
//                .foregroundColor(Color.green)
//                .frame(width: 50, height: 200)
//            Rectangle()
//                .foregroundColor(Color.red)
//                .alignmentGuide(.oneThird, computeValue: { d in d[VerticalAlignment.bottom]})
//                .frame(width: 50, height: 200)
//            Rectangle()
//                .foregroundColor(Color.blue)
//                .frame(width: 50, height: 200)
//            Rectangle()
//                .foregroundColor(Color.orange)
//                .alignmentGuide(.oneThird, computeValue: { d in d[VerticalAlignment.top]})
//                .frame(width: 50, height: 200)
//        }
//        HStack(alignment: .crossAlignment, spacing: 20) {
//            Circle()
//                .foregroundColor(Color.purple)
//                .alignmentGuide(.crossAlignment, computeValue: { d in d[VerticalAlignment.center]})
//                .frame(width: 100, height: 100)
//
//            VStack(alignment: .center) {
//                Rectangle()
//                    .foregroundColor(Color.green)
//                    .frame(width: 100, height: 100)
//                Rectangle()
//                    .foregroundColor(Color.red)
//                    .frame(width: 100, height: 100)
//                Rectangle()
//                    .foregroundColor(Color.blue)
//                    .alignmentGuide(.crossAlignment, computeValue: { d in d[VerticalAlignment.center]})
//                    .frame(width: 100, height: 100)
//                Rectangle()
//                    .foregroundColor(Color.orange)
//                    .frame(width: 100, height: 100)
//            }
//        }
//        ZStack(alignment: .myAlignment) {
//            Rectangle()
//                .foregroundColor(Color.green)
//                .alignmentGuide(HorizontalAlignment.myAlignment)
//                    { d in d[.trailing] }
//                .alignmentGuide(VerticalAlignment.myAlignment)
//                    { d in d[VerticalAlignment.bottom] }
//                .frame(width: 100, height: 100)
//            Rectangle()
//                .foregroundColor(Color.red)
//                .alignmentGuide(VerticalAlignment.myAlignment)
//                    { d in d[VerticalAlignment.top] }
//                .alignmentGuide(HorizontalAlignment.myAlignment)
//                    { d in d[HorizontalAlignment.center] }
//                .frame(width: 100, height: 100)
//            Circle()
//                .foregroundColor(Color.orange)
//                .alignmentGuide(HorizontalAlignment.myAlignment)
//                    { d in d[.leading] }
//                .alignmentGuide(VerticalAlignment.myAlignment)
//                    { d in d[.bottom] }
//                .frame(width: 100, height: 100)
//        }
        ZStack(alignment: .myAlignment) {
            Rectangle()
                .foregroundColor(Color.green)
                .alignmentGuide(HorizontalAlignment.myAlignment)
                    { d in d[.leading] }
                .alignmentGuide(VerticalAlignment.myAlignment)
                    { d in d[VerticalAlignment.bottom] }
                .frame(width: 100, height: 100)
            Rectangle()
                .foregroundColor(Color.red)
                .alignmentGuide(VerticalAlignment.myAlignment)
                    { d in d[VerticalAlignment.center] }
                .alignmentGuide(HorizontalAlignment.myAlignment)
                    { d in d[HorizontalAlignment.trailing] }
                .frame(width: 100, height: 100)
            Circle()
                .foregroundColor(Color.orange)
                .alignmentGuide(HorizontalAlignment.myAlignment)
                    { d in d[.leading] }
                .alignmentGuide(VerticalAlignment.myAlignment)
                    { d in d[.top] }
                .frame(width: 100, height: 100)
        }
    }
}

extension HorizontalAlignment {
    enum MyHorizontal: AlignmentID {
        static func defaultValue(in d: ViewDimensions) -> CGFloat {
            d[HorizontalAlignment.center]
        }
    }
    static let myAlignment = HorizontalAlignment(MyHorizontal.self)
}

extension VerticalAlignment {
    enum MyVertical: AlignmentID {
        static func defaultValue(in d: ViewDimensions) -> CGFloat {
            d[VerticalAlignment.center]
        }
    }
    static let myAlignment = VerticalAlignment(MyVertical.self)
}

extension Alignment {
    static let myAlignment = Alignment(horizontal: .myAlignment, vertical: .myAlignment)
}

//extension VerticalAlignment {
//    private enum CrossAlignment: AlignmentID {
//        static func defaultValue(in d: ViewDimensions) -> CGFloat {
//            return d[.bottom]
//        }
//    }
//
//    static let crossAlignment = VerticalAlignment(CrossAlignment.self)
//}

//extension VerticalAlignment {
//    private enum OneThird: AlignmentID {
//        static func defaultValue(in d: ViewDimensions) -> CGFloat {
//            return d.height / 3
//        }
//    }
//
//    static let oneThird = VerticalAlignment(OneThird.self)
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
