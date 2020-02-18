//
//  TabbarPresenter.swift
//  HYPR
//
//  Created by vitalii on 5/11/19.
//  Copyright © 2019 tas. All rights reserved.
//

import UIKit
import UserNotifications
import Alamofire

protocol TabbarInterface: class {

    func setActiveTab(with type: TabbarPage, animated: Bool)
    func activeTab() -> TabbarPage
    func rootViewController(for tab: TabbarPage) -> NavigationController?
}

protocol TabbarOutput: ViewLifecycle {

    func viewDidSetPresenter()
}

class TabbarPresenter {

    private weak var view: TabbarInterface?
    private let router: TabbarRouterProtocol
    private let socketService: SocketServiceProtocol
    private var observer: NSKeyValueObservation?

    init(with view: TabbarInterface, router: TabbarRouterProtocol, socketService: SocketServiceProtocol) {
        self.view = view
        self.socketService = socketService
        self.router = router
    }

    // MARK: - Private
    
    private func subscribeToSocket() {
        socketService.connect()
    }

    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}

// MARK: - TabbarOutput
    
extension TabbarPresenter: TabbarOutput {

    func viewDidSetPresenter() {
        subscribeToSocket()
    }
}
