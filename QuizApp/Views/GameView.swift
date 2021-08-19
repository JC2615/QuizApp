//
//  GameView.swift
//  QuizApp
//
//  Created by Joshua Curry on 8/4/21.
//

import SwiftUI

struct GameView: View {
    @ObservedObject var viewModel = GameViewModel()
    
    
    
    var body: some View {
        ZStack {
            Color(.sRGB, red: 0.7, green: 0.7, blue: 0.5, opacity: 0.2)
                .ignoresSafeArea()
            VStack {
                Text("Quiz Time!")
                    .font(.largeTitle)
                    .padding()
                    .foregroundColor(.red)
                Text(viewModel.progressText)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Spacer()
                Text(viewModel.questionText)
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding()
                Spacer()
                Spacer()
                HStack{
                    ForEach(viewModel.answerIndices){ index in
                        AnswerButton(text: "\(viewModel.answerText(for: index))"){
                            viewModel.makeselectionForCurrentQuestion(at: index)
                        }
                        .background(viewModel.colorForButton(at: index))
                        .disabled(viewModel.selectionWasMade)
                    }
                }
                if viewModel.selectionWasMade {
                    BottomText(str: "Next"){
                        viewModel.advanceGameState()
                    }
                }
            }
            .padding(.bottom)
        }
    }
    
}

struct AnswerButton: View {
    let text: String
    let onClick: () -> Void
    var body: some View {
        Button(action: {
            onClick()
        }) {
            Text("\(text)")
                .padding()
                .border(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/4/*@END_MENU_TOKEN@*/)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
