//
//  ContentView.swift
//  StatusAndObject
//
//  Created by bellossimo on 2020/05/04.
//  Copyright © 2020 bellossimo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
//    @State private var wifiEnabled = true
//    @State private var userName = ""
    
    @EnvironmentObject var demoData: DemoData

    var body: some View {
//        VStack {
//            Toggle(isOn: $wifiEnabled) {
//                Text("Enable Wi-Fi")
//            }
//            TextField("Enter user name", text: $userName)
//            Text(userName)
//            WifiImageView(wifiEnabled: $wifiEnabled)
//        }
        Text("\(demoData.currentUser), you are user number \(demoData.userCount)")
    }
    
}

struct WifiImageView: View {
    @Binding var wifiEnabled: Bool
    var body: some View {
        Image(systemName: wifiEnabled ? "wifi" : "wifi.slash")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
//        ContentView()
        ContentView().environmentObject(DemoData())
    }
}
