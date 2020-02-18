//
//  TabbarItemsFactory.swift
//  HYPR
//
//  Created by vitalii on 5/11/19.
//  Copyright © 2019 tas. All rights reserved.
//

import UIKit

class TabbarItemsFactory {

    static func makeHomeButton() -> UITabBarItem {
        return makeButton(with: Asset.Assets.home.image, selectedImage: Asset.Assets.homeSelected.image)
    }

    static func makeListButton() -> UITabBarItem {
        return makeButton(with: Asset.Assets.list.image, selectedImage: Asset.Assets.listSelected.image)
    }
    
    static func makeProfileButton() -> UITabBarItem {
        return makeButton(with: Asset.Assets.account.image, selectedImage: Asset.Assets.accountSelected.image)
    }

    // MARK: - Private
    
    private static func makeButton(with image: UIImage, selectedImage: UIImage) -> UITabBarItem {
        return UITabBarItem(title: "", image: image, selectedImage: selectedImage)
    }
}
