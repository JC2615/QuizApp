//
//  Game.swift
//  QuizApp
//
//  Created by Joshua Curry on 8/19/21.
//

import Foundation

struct Game {
    
    // MARK - Private Properties
    
    private let questions = Question.allQuestions.shuffled()
    
    private(set) var currentQuestionIndex = 0
    
    private(set) var selections: [Question: Int] = [:]
    
    private var gameIsOver = false
    
    // MARK - Internal Methods and Properties
    
    var questionCount: Int {
        questions.count
    }
    
    var currentQuestion: Question {
        questions[currentQuestionIndex]
    }
    
    mutating func advanceGameState(){
        let nextQuestionIndex = currentQuestionIndex + 1
        if !questions.indices.contains(nextQuestionIndex){
            gameIsOver = true
            print("Game Over")
        }
        else {
            currentQuestionIndex = nextQuestionIndex
        }
    }
    
    mutating func makeselection(at index: Int){
        selections[currentQuestion] = index
    }
}
