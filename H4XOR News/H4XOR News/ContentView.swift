//
//  ContentView.swift
//  H4XOR News
//
//  Created by Malinga Bandara on 2022-03-25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{ // Navigation View (back to the previous screen)
        
        List{ // List view (Like Table view)
            Text("Hello, world!")
            Text("Hello, world!")
        }
            
        .navigationTitle("H4XOR NEWS") // navigation bar title
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


// to store(get) Hacker News posts
struct Post: Identifiable { // 'Identifiable' allow list to be able to recognize the oder of Post object based on 'ID' Veriable
 
    let id: String // unique identify the post
    let title: String // post title
    
}
