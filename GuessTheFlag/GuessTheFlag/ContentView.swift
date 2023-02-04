//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Diego Araújo Borges on 04/02/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showingScore = false
    @State private var scoreTitle = " "
    @State private var contries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
   @State private var correctAnswer = Int.random(in: 0...2)
    
    
    var body: some View {
        ZStack {
            Color.teal
                .ignoresSafeArea()
            VStack(spacing: 30) {
                VStack {
                    Text("Tap the flag of")
                        .foregroundColor(.white)
                    Text(contries[correctAnswer])
                        .foregroundColor(.white)
                }
                ForEach(0..<3) { number in
                    Button{
                        
                    } label: {
                        Image(contries[number])
                            .renderingMode(.original)
                    }
                }
            }
        }
        .alert(scoreTitle, isPresented: $showingScore){
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your Score is ???")
        }
    }
    
    func flagTapped (_ number: Int){
        if number == correctAnswer{
            scoreTitle = "Correct"
        } else {
            scoreTitle = "Wrong"
        }
        showingScore = true
    }
    
    func askQuestion() {
        contries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
