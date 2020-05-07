//
//  ContentView.swift
//  SwiftUIList
//
//  Created by bellossimo on 2020/05/07.
//  Copyright © 2020 bellossimo. All rights reserved.
//

import SwiftUI

var listData: [ToDoItem] = [
    ToDoItem(task: "take out trash", imageName: "trash.circle.fill"),
    ToDoItem(task: "Pick up the kids", imageName: "person.2.fill"),
    ToDoItem(task: "Wash the car", imageName: "car.fill")
]

struct ContentView: View {
    
    @State var toggleStatus = true
    
    var body: some View {
//        List {
//            Text("Wash the car")
//            Text("Vacuum house")
//            Text("Pick up kids from school bus @ 3pm")
//            Text("Auction the kids on eBay")
//            Text("Order Pizza for dinner")
//        }
//        List {
//            HStack {
//                Image(systemName: "trash.circle.fill")
//                Text("Take out the trash")
//            }
//            HStack {
//                Image(systemName: "person.2.fill")
//                Text("Pick up the kids")
//            }
//            HStack {
//                Image(systemName: "car.fill")
//                Text("Wash the car")
//            }
//        }
//        List(listData) { item in
//            HStack {
//                Image(systemName: item.imageName)
//                Text(item.task)
//            }
//        }
//        List {
//            Toggle(isOn: $toggleStatus) {
//                Text("Allow Notifications")
//            }
//            ForEach (listData) { item in
//                HStack {
//                    Image(systemName: item.imageName)
//                    Text(item.task)
//                }
//            }
//        }
//        List {
//            Section(header: Text("Settings")) {
//                Toggle(isOn: $toggleStatus) {
//                    Text("Allow Notifications")
//                }
//            }
//            Section(header: Text("To Do Tasks")) {
//                ForEach (listData) { item in
//                    HStack {
//                        Image(systemName: item.imageName)
//                        Text(item.task)
//                    }
//                }
//            }
//        }
        NavigationView {
            List {
                Section(header: Text("Settings")) {
                    Toggle(isOn: $toggleStatus) {
                        Text("Allow Notifications")
                    }
                }
                Section(header: Text("To Do Tasks")) {
                    ForEach (listData) { item in
                        HStack {
                            NavigationLink(destination: Text(item.task)) {
                                Image(systemName: item.imageName)
                                Text(item.task)
                            }
                        }
                    }
                    .onDelete(perform: deleteItem)
                    .onMove(perform: moveItem)
                }
            }
            .navigationBarTitle(Text("To Do List"))
            .navigationBarItems(trailing: EditButton())
        }
    }
}

func deleteItem(at offsets: IndexSet) {
    // 데이터 소스에서 항목을 삭제하는 코드가 여기 온다.
}

func moveItem(from source: IndexSet, to destination: Int) {
    // 항목을 재배열하는 코드가 온다.
}

struct ToDoItem: Identifiable {
    var id = UUID()
    var task: String
    var imageName: String
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
