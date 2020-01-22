//
//  LinkOpenable.swift
//  HYPR
//
//  Created by vitalii on 5/8/19.
//  Copyright © 2019 tas. All rights reserved.
//

import Foundation
import UIKit
import SafariServices

protocol LinkOpenableRouter: class, SFSafariViewControllerDelegate {

    var viewController: UIViewController? { get }
    func open(link: URL)
}

extension LinkOpenableRouter {

    func open(link: URL) {
        let safariViewController = SFSafariViewController(url: link)
        safariViewController.delegate = self
        safariViewController.preferredBarTintColor = Asset.Colors.black.color
        safariViewController.preferredControlTintColor = Asset.Colors.neon.color
        viewController?.present(safariViewController, animated: true, completion: nil)
    }
}
