//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by MİZGİN YILDIRAK on 6.01.2024.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answer: [Any]
    let correctAnswer: String
    
    init(q: String, a: [Any], c: String) {
        text = q
        answer = a
        correctAnswer = c
    }
}
