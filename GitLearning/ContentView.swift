//
//  ContentView.swift
//  GitLearning
//
//  Created by Janaka Wijesena on 2025-05-05.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showSheet  = false
    
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(destination: {
                    DetailView()
                }, label: {
                    Text("Git Learning App")
                })
                
                Button(action: {
                    showSheet = true
                }, label: {
                    Text("Show More")
                })
                
            }
            .padding()
            .sheet(isPresented: $showSheet, content: {
                DetailView()
            })
        }
    }
}

#Preview {
    ContentView()
}
