//
//  TabViews.swift
//  CustomeTabbar
//
//  Created by Eng.Omar Elsayed on 25/02/2024.
//

import Foundation
import SwiftUI

enum TabViews: String {
    case Home
    case Search
    case History
    case Profile
}

extension TabViews: CaseIterable {
    
}

extension TabViews {
    func getColor() -> Color {
        switch self {
        case .Home:
            return Color.purple.opacity(0.4)
        case .Search:
            return Color.mint.opacity(0.3)
        case .History:
            return Color.green.opacity(0.4)
        case .Profile:
            return Color.orange.opacity(0.3)
        }
    }
    
    func doesItHaveButton() -> Bool {
        switch self {
        case .Home:
            return true
        case .History:
            return true
        default:
            return false
        }
    }
    
    func getButtonText() -> String {
        switch self {
        case .Home:
            return "Push Next"
        case .History:
            return "Edit"
        default:
            return ""
        }
    }
    
    func getTabLabel() -> String {
        switch self {
        case .Home:
            return "house.fill"
        case .Search:
            return "magnifyingglass"
        case .History:
            return "clock"
        case .Profile:
            return "person.fill"
        }
    }
    
}
