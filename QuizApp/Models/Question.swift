//
//  Question.swift
//  QuizApp
//
//  Created by Joshua Curry on 8/11/21.
//

import Foundation

struct Question {
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    
    static let allQuestions: [Question] = [
        Question(questionText: "What was the first computer bug?",
                 possibleAnswers: [
                    "Fly",
                    "Ant",
                    "Beetle",
                    "Moth"
                ],
                 correctAnswerIndex: 3),
        Question(questionText: "What language did iOS developers use before Swift?",
                 possibleAnswers: [
                    "C++",
                    "Objective-C",
                    "Python",
                    "COBOL"
                ],
                 correctAnswerIndex: 1),
        Question(questionText: "What is 1+1?",
                 possibleAnswers: [
                    "4",
                    "42",
                    "88",
                    "2"
                ],
                 correctAnswerIndex: 3)
    ]
}
