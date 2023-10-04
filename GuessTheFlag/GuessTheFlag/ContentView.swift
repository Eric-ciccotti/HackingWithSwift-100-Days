//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by P994396 on 23/09/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var showingScore = false
    @State private var showingRestart = false
    @State private var scoreTitle = ""
    @State private var score: Int = 0
    @State private var tappedFlagNumber: Int = 0
    @State private var counter : Int = 8
    
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    
    var body: some View {
        ZStack {
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3),
            ], center: .top, startRadius: 200, endRadius: 400)
            .ignoresSafeArea()
            VStack {
                Spacer()
                
                Text("Guess the Flag")
                    .font(.largeTitle.weight(.bold))
                    .foregroundColor(.white)
                
            
                VStack(spacing: 15) {
                    VStack {
                        Text("TAP THE RIGHT FLAG !")
                            .font(.subheadline.weight(.heavy))
                        Text(countries[correctAnswer])
                            .font(.largeTitle.weight(.semibold))
                    }
                    ForEach(0..<3) { number in
                        Button {
                            flagTapped(number)
                        } label : {
                            Image(countries[number])
                                .renderingMode(.original)
                                .clipShape(.rect(cornerRadius: 20))
                                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.ultraThinMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 50))
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
                Spacer()
                Spacer()
                
                
                Text("Score : \(score)")
                    .font(.largeTitle.weight(.bold))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 20)
                    .background(.ultraThinMaterial)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
                Text("Remaining Game : \(counter)")
                    .font(.title.weight(.bold))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 20)
                    .background(.ultraThinMaterial)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
                Spacer()
            }
            .padding()
        }
        
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            if(scoreTitle == "Correct") {
                Text("Nice one !")
            } else {
                Text("That’s the flag of \(countries[tappedFlagNumber])")
            }
        }
        .alert("Game over !", isPresented: $showingRestart) {
            Button("Restart", action: restartGame)
            Button("Quit", action: quit)
        } message : {
            Text("Your score is \(score)")
        }
    }
    
    func flagTapped(_ number: Int) {
        counter -= 1
        
        if number == correctAnswer {
            scoreTitle = "Correct"
            score += 1
        } else {
            scoreTitle = "Wrong"
            tappedFlagNumber = number
        }
        
        if(counter == 0) {
            showingRestart = true
        }
   
        showingScore = true
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    
    func restartGame() {
        score = 0
        counter = 8
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    
    func quit() {
       exit(0)
    }
}

#Preview {
    ContentView()
}
