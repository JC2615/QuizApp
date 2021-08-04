//
//  ContentView.swift
//  QuizApp
//
//  Created by Joshua Curry on 8/4/21.
//

import SwiftUI

struct ContentView: View {
    let question = "What was the first computer bug?"
    let possibleAnswers = [
        "Fly",
        "Ant",
        "Beetle",
        "Moth"
    ]
    var body: some View {
        ZStack {
            Color(.sRGB, red: 0.7, green: 0.7, blue: 0.5, opacity: 0.2)
                .ignoresSafeArea()
            VStack {
                Text("Quiz Time!")
                    .font(.largeTitle)
                    .padding()
                Text("Question 1 / 4")
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Spacer()
                Text(question)
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding()
                Spacer()
                Spacer()
                HStack{
                    ForEach(possibleAnswers.indices){ index in
                        AnswerButton(text: "\(possibleAnswers[index])")
                    }
                }
                
            }
        }
    }
}

struct AnswerButton: View {
    let text: String
    var body: some View {
        Button(action: {
            print("You selected \(text)")
        }) {
            Text("\(text)")
                .padding()
                .border(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/4/*@END_MENU_TOKEN@*/)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
