//
//  ContentView.swift
//  Programming Jokes
//
//  Created by Ela Murat on 26/07/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var jokes = [Joke]()
    var body: some View {
        NavigationView {
            List(jokes) { joke in
                NavigationLink(destination: Text(joke.punchline)
                    .padding()) {
                        Text(joke.setup)
                    }
            }
            .navigationTitle("Programming Jokes")
        }
        .onAppear(perform: {
            getJokes()
        })
    }
    
    func getJokes() {
        let apiKey = "?rapidapi-key=(bbb0e8c206msh86e035ac7d9c2aep11e474jsnd83dd2780ad0)"

       }
}

struct Joke: Identifiable {
    let id = UUID()
    var setup = ""
    var punchline = ""
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
