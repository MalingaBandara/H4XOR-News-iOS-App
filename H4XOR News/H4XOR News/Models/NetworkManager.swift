//
//  NetworkManager.swift
//  H4XOR News
//
//  Created by Malinga Bandara on 2022-03-25.
//

import Foundation

class NetworkManager{
    
    func fetchData() { // fetch Data from URL (API URL)
        
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") { // API URL
            
            let session = URLSession(configuration: .default) // URL session
            
            let task = session.dataTask(with: url) { ( data, response, error ) in
                
                if error == nil { // if errors aren't occurred
                    
                    let decoder = JSONDecoder() // add decoder to decode the data
                    
                    
                }
                
            }
            
        }
        
    }
    
}
