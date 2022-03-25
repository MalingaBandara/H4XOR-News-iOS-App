//
//  ContentView.swift
//  H4XOR News
//
//  Created by Malinga Bandara on 2022-03-25.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager() //'NetworkManager' object
    
    var body: some View {
        
        NavigationView{ // Navigation View (back to the previous screen)
        
                // List view (Like Table view)
            List(networkManager.posts){ post in             // ************ start closure *********

                HStack {
                    Text(String(post.points)) // add news point
                    Text(post.title) // news title
                }
            }                                                      // ******** end *********
            
        .navigationTitle("H4XOR NEWS") // navigation bar title
        }
        .onAppear {
            self.networkManager.fetchData() // fetchData function calling
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
