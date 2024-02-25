//
//  MainView.swift
//  CustomeTabbar
//
//  Created by Eng.Omar Elsayed on 25/02/2024.
//

import SwiftUI

struct MainView: View {
    @StateObject var tabViewManger = TabViewManger()
    
    var body: some View {
        ZStack(alignment: .bottom){
            TabView(selection: $tabViewManger.selectedTab) {
                ForEach(TabViews.allCases, id: \.self) { tab in
                    GenericTabView(tab: tab, buttonAction: {})
                        .tag(tab)
                        .transition(.move(edge: .trailing))
                }
            }
            
            TabBarView()
                .environmentObject(tabViewManger)
        }
    }
}

#Preview {
    MainView()
}
