//
//  NavigationManger.swift
//  CustomeTabbar
//
//  Created by Eng.Omar Elsayed on 25/02/2024.
//

import Foundation

class NavigationManger: ObservableObject {
    @Published var presentedView: [TabViews] = [.Home, .Profile, .History]
}

extension NavigationManger {
    func goTo(_ tab: TabViews) {
        switch tab {
        case .Home:
            goToHome()
        case .Search:
            break
        case .History:
            break
        case .Profile:
            break
        }
    }
}

extension NavigationManger {
    private func goToHome() {
        if presentedView.count > 1 {
            let last = presentedView.last
            presentedView.removeAll(where: { $0 != .Home })
        }
    }
}
