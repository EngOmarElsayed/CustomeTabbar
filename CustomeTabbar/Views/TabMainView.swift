//
//  TabMainView.swift
//  CustomeTabbar
//
//  Created by Eng.Omar Elsayed on 25/02/2024.
//

import SwiftUI

struct TabMainView: View {
    @StateObject var tabViewManger = TabViewManger()
    
    var body: some View {
        ZStack(alignment: .bottom) {
            switch tabViewManger.selectedTab {
            case .Home:
                GenericTabView(tab: .Home, buttonAction: {})
                    .transition(.move(edge: tabViewManger.selectedTab.getIndex() > tabViewManger.currentTab.getIndex() ? .trailing: .leading))
            case .Search:
                GenericTabView(tab: .Search, buttonAction: {})
                    .transition(.move(edge: tabViewManger.selectedTab.getIndex() > tabViewManger.currentTab.getIndex() ? .leading: .trailing))
            case .History:
                GenericTabView(tab: .History, buttonAction: {})
                    .transition(.move(edge: tabViewManger.selectedTab.getIndex() > tabViewManger.currentTab.getIndex() ? .leading: .trailing))
            case .Profile:
                GenericTabView(tab: .Profile, buttonAction: {})
                    .transition(.move(edge: tabViewManger.selectedTab.getIndex() > tabViewManger.currentTab.getIndex() ? .leading: .trailing))
            }
            
//            TabBarView()
//                .environmentObject(tabViewManger)
        }
    }
}

#Preview {
    TabMainView()
}
