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
        
     // List view (Like Table view)
            List(posts){ post in             // ************ start closure *********
                
                Text(post.title)
                
            }                                       // ******** end *********
            
        .navigationTitle("H4XOR NEWS") // navigation bar title
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


// posts array
let posts = [
    
    Post(id: "1", title: "Hello"),
    Post(id: "2", title: "Hello"),
    Post(id: "3", title: "Hello")

]
