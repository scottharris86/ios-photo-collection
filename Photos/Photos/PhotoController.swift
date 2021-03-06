//
//  PhotoController.swift
//  Photos
//
//  Created by scott harris on 1/30/20.
//  Copyright © 2020 scott harris. All rights reserved.
//

import Foundation

class PhotoController {
    var photos: [Photo] = []
    
    func createPhoto(title: String, imageData: Data) {
        let photo = Photo(title: title, imageData: imageData)
        photos.append(photo)
    }
    
    func update(photo: Photo, title: String, data: Data) {
        if let index = photos.firstIndex(of: photo) {
            var photo = photos[index]
            photo.title = title
            photo.imageData = data
        }
    }
    
}
