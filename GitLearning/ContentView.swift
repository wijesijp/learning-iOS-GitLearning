//
//  ContentView.swift
//  GitLearning
//
//  Created by Janaka Wijesena on 2025-05-05.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showSheet  = false
    
    @State var showNavigation = false
    
    var body: some View {
        NavigationStack {
            VStack {
                
                Button(action: {
                    showNavigation = true
                }, label: {
                    Text("Git Learning App")
                })
                
//                NavigationLink(destination: {
//                    DetailView()
//                }, label: {
//                    Text("Git Learning App")
//                })
                
                Button(action: {
                    showSheet = true
                }, label: {
                    Text("Show Details")
                })
                
            }
            .padding()
            .sheet(isPresented: $showSheet, content: {
                DetailView()
            })
            .navigationDestination(isPresented: $showNavigation, destination: {
                DetailView()
            })
        }
    }
}

#Preview {
    ContentView()
}
