//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Misha Strutinsky on 10.11.2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        self.answer = a
        self.text = q
    }
}
