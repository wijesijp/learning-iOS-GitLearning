//
//  ContentView.swift
//  GitLearning
//
//  Created by Janaka Wijesena on 2025-05-05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(destination: {
                    DetailView()
                }, label: {
                    Text("Git Learning App")
                })
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
