//
//  HomeViewModel.swift
//  Foodee
//
//  Created by Alex Okhtov on 07.02.2022.
//

import Foundation
import Combine



final class HomeViewModel: ObservableObject {
    
    @Published var businesses = [Business]()
    @Published var searchText = ""
    
    func search() {
        let live = YelpApiService.live
        
        live.search("food", .init(latitude: 42.36, longitude: -71), nil)
            .assign(to: &$businesses)
    }
 
}
