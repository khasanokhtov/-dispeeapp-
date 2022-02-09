//
//  HomeViewModel.swift
//  Foodee
//
//  Created by Alex Okhtov on 07.02.2022.
//

import Foundation
import Combine



final class HomeViewModel: ObservableObject {
    
    
    @Published var searchText = ""
    @Published var fakeDataList = [
        FakeListPhotoModel(title: "title1", src: "https://image.shutterstock.com/image-photo/micro-peacock-feather-hd-imagebest-260nw-1127238599.jpg"),
        FakeListPhotoModel(title: "title2", src: "https://image.shutterstock.com/image-photo/micro-peacock-feather-hd-imagebest-260nw-1127238599.jpg"),
        FakeListPhotoModel(title: "title3", src: "https://image.shutterstock.com/image-photo/micro-peacock-feather-hd-imagebest-260nw-1127238599.jpg"),
        FakeListPhotoModel(title: "title4", src: "https://image.shutterstock.com/image-photo/micro-peacock-feather-hd-imagebest-260nw-1127238599.jpg"),
        FakeListPhotoModel(title: "title5", src: "https://image.shutterstock.com/image-photo/micro-peacock-feather-hd-imagebest-260nw-1127238599.jpg")
    ]
    
    func search() {
    }
 
}

struct FakeListPhotoModel : Identifiable {
    let id = UUID()
    let title: String
    let src: String
}
