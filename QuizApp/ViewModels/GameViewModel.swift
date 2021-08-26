//
//  GameViewModel.swift
//  QuizApp
//
//  Created by Joshua Curry on 8/19/21.
//

import SwiftUI

class GameViewModel: ObservableObject {
    
    @Published var game = Game()
    
    var questionText: String {
        game.currentQuestion.questionText
    }
    
    var answerIndices: Range<Int> {
        game.currentQuestion.possibleAnswers.indices
    }
    
    var correctAnswerIndex: Int {
        game.currentQuestion.correctAnswerIndex
    }
    
    var progressText: String {
        "Question \(game.currentQuestionIndex + 1) / \(game.questionCount)"
    }
    
    var selectionWasMade: Bool {
        game.selections[game.currentQuestion] != nil
    }
    
    var correctSelectionCount: Int {
        game.selectionCount.correct
    }
    
    var incorrectSelectionCount: Int {
        game.selectionCount.incorrect
    }
    
    var gameIsOver: Bool {
        game.gameIsOver
    }
    
    var selectionCount: (Int, Int) {
        game.selectionCount
    }
    
    func answerText(for index: Int) -> String {
        game.currentQuestion.possibleAnswers[index]
    }
    
    func advanceGameState(){
        game.advanceGameState()
    }
    
    func makeselectionForCurrentQuestion(at index: Int){
        game.makeselection(at: index)
    }
    
    func colorForButton(at buttonIndex: Int) -> Color {
        guard let selectedIndex = game.selections[game.currentQuestion], selectedIndex == buttonIndex else {return .clear}
        if selectedIndex == correctAnswerIndex {
            return .green
        }
        else {
            return .red
        }
    }

}
