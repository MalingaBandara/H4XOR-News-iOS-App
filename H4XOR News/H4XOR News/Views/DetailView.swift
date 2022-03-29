//
//  DetailView.swift
//  H4XOR News
//
//  Created by Malinga Bandara on 2022-03-29.
//

import SwiftUI
import WebKit


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


struct WebView: UIViewRepresentable {
    
    let urlString: String? // url
    
    func makeUIView(context: Context) -> WebView.UIViewType { // this is for create WebView Using WebKit. That componet is "WKWebView"
        
        return WKWebView() // WebKit component
        
    }
     
    
    func updateUIView(_ uiView: WKWebView, context: Context) { // this is for What item shoud put that WKWebView
        
        if let safeString = urlString{  // check the url null or not
            
            if let url = URL(string: safeString) { // set safeString to URL shoud load
                
                let request = URLRequest(url: url) // Create web request using URL
                
                uiView.load(request) // load the URL
                
            }
            
        }
        
    }
    
}
