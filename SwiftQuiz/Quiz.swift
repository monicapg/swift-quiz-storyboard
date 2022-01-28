//
//  Quiz.swift
//  SwiftQuiz
//
//  Created by Monica de Paula Gomides on 12/01/22.
//

import  Foundation

class Quiz {
    
    let question: String
    let options: [String]
    private let correctAnswer: String
    
    
    init(question: String, options: [String], correctAnswer: String) {
        self.question = question
        self.options = options
        self.correctAnswer = correctAnswer
    }
    
    func validateOption(_ index: Int) -> Bool {
        let answer = options[index]
        return answer == correctAnswer
    }
    
    deinit {
            print("Liberou quiz da memória.")
    }
}
