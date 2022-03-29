//
//  WebView.swift
//  H4XOR News
//
//  Created by Malinga Bandara on 2022-03-29.
//

import Foundation
import WebKit  // for web
import SwiftUI


struct WebView: UIViewRepresentable {
    
    let urlString: String? // url
    
    func makeUIView(context: Context) -> WKWebView { // this is for create WebView Using WebKit. That componet is "WKWebView"
        
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
