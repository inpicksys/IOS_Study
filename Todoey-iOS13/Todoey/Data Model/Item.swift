//
//  Item.swift
//  Todoey
//
//  Created by Misha Strutinsky on 06.03.2021.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import Foundation

class Item: Codable {//Encodable, Decodable {
    var title : String = ""
    var done: Bool = false
}
