//
//  NewsModel.swift
//  HackerNews
//
//  Created by BKS-GGS on 10/01/23.
//


struct NewsModel : Decodable{
    
    var hits: [Hits]?
    
}
struct Hits: Decodable{
    
    var title: String?
    var points: Int?
}
