//
//  TabViewManger.swift
//  CustomeTabbar
//
//  Created by Eng.Omar Elsayed on 25/02/2024.
//

import Foundation
import SwiftUI

class TabViewManger: ObservableObject {
    @Published var selectedTab: TabViews = .Home
    @Published var currentTab: TabViews = .Home
}

extension TabViewManger {
    func getEdge() -> Edge {
        switch (selectedTab, currentTab) {
        case (.Home, .Search):
            return .trailing
        default:
            return .leading
        }
    }
}
