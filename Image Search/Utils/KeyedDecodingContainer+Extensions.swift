//
//  KeyedDecodingContainer+Extensions.swift
//  Image Search
//
//  Created by eaglean on 6/6/21.
//

import UIKit

extension KeyedDecodingContainer {
    func decode(_ type: UIColor.Type, forKey key: Key) throws -> UIColor {
        let hexColor = try self.decode(String.self, forKey: key)
        return UIColor(hexString: hexColor)
    }

    func decode(_ type: [UnsplashPhoto.URLKind: URL].Type, forKey key: Key) throws -> [UnsplashPhoto.URLKind: URL] {
        let urlsDictionary = try self.decode([String: String].self, forKey: key)
        var result = [UnsplashPhoto.URLKind: URL]()
        for (key, value) in urlsDictionary {
            if let kind = UnsplashPhoto.URLKind(rawValue: key),
                let url = URL(string: value) {
                result[kind] = url
            }
        }
        return result
    }

    func decode(_ type: [UnsplashPhoto.LinkKind: URL].Type, forKey key: Key) throws -> [UnsplashPhoto.LinkKind: URL] {
        let linksDictionary = try self.decode([String: String].self, forKey: key)
        var result = [UnsplashPhoto.LinkKind: URL]()
        for (key, value) in linksDictionary {
            if let kind = UnsplashPhoto.LinkKind(rawValue: key),
                let url = URL(string: value) {
                result[kind] = url
            }
        }
        return result
    }

    func decode(_ type: [UnsplashUser.ProfileImageSize: URL].Type, forKey key: Key) throws -> [UnsplashUser.ProfileImageSize: URL] {
        let sizesDictionary = try self.decode([String: String].self, forKey: key)
        var result = [UnsplashUser.ProfileImageSize: URL]()
        for (key, value) in sizesDictionary {
            if let size = UnsplashUser.ProfileImageSize(rawValue: key),
                let url = URL(string: value) {
                result[size] = url
            }
        }
        return result
    }
    
    func decode(_ type: [UnsplashUser.LinkKind: URL].Type, forKey key: Key) throws -> [UnsplashUser.LinkKind: URL] {
        let urlsDictionary = try self.decode([String: String].self, forKey: key)
        var result = [UnsplashUser.LinkKind: URL]()
        for (key, value) in urlsDictionary {
            if let kind = UnsplashUser.LinkKind(rawValue: key),
                let url = URL(string: value) {
                result[kind] = url
            }
        }
        return result
    }
}
