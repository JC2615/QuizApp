//
//  ResultsViewModel.swift
//  QuizApp
//
//  Created by Joshua Curry on 8/25/21.
//

import Foundation

struct ResultsViewModel {
    let selectionCount: (correct: Int, incorrect: Int)
    
    var finalPercentText: String {
        "\(selectionCount.correct * 100 / (selectionCount.correct + selectionCount.incorrect)) %"
    }
    
    var correctSelectionText: String {
        "\(selectionCount.correct) ✅"
    }
    
    var incorrectSelectionText: String {
        "\(selectionCount.incorrect) ❌"
    }
}
