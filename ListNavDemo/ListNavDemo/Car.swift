//
//  Car.swift
//  ListNavDemo
//
//  Created by bellossimo on 2020/05/10.
//  Copyright © 2020 bellossimo. All rights reserved.
//

import Foundation

struct Car: Codable, Identifiable {
    var id: String
    var name: String
    
    var description: String
    var isHybrid: Bool
    
    var imageName: String
}
