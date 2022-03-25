//
//  PostData.swift
//  H4XOR News
//
//  Created by Malinga Bandara on 2022-03-25.
//

import Foundation

// to store(get) Hacker News posts
struct Results: Decodable {
    
    let hits: [Post]
}

struct Post: Decodable, Identifiable { // 'Identifiable' allow list to be able to recognize the oder of Post object based on 'ID' Veriable
    
    var id: String // unique identify the post
    {
        return objectID // computing value
    }
    
    let objectID: String     // get 'objectID' of story's inside API
    let points: Int         //  get 'point' of story's inside API
    let title: String      //   get 'title' of story's inside API
    let url: String       //    get 'url' of story's inside API
    
}
 
