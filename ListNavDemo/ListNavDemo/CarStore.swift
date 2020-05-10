//
//  CarStore.swift
//  ListNavDemo
//
//  Created by bellossimo on 2020/05/10.
//  Copyright © 2020 bellossimo. All rights reserved.
//

import SwiftUI
import Combine

class CarStore: ObservableObject {
    
    @Published var cars: [Car]
    
    init(cars: [Car] = []) {
        self.cars = cars
    }
}
