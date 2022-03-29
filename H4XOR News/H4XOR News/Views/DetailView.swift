//
//  DetailView.swift
//  H4XOR News
//
//  Created by Malinga Bandara on 2022-03-29.
//

import SwiftUI


struct DetailView: View {
    
    let url: String? // url comming from ContentView
    
    var body: some View {
        WebView(urlString: url) // call the url to WebView
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}
