//
//  ContentView.swift
//  CustomeTabbar
//
//  Created by Eng.Omar Elsayed on 25/02/2024.
//

import SwiftUI

struct MainView: View {
    @State var tabView: TabViews = .Home
    
    var body: some View {
        ZStack(alignment: .bottom) {
            switch tabView {
            case .Home:
                GenericTabView(tab: .Home, buttonAction: {} )
                    .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading)))
            case .Search:
                GenericTabView(tab: .Search, buttonAction: {} )
                    .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading)))
            case .History:
                GenericTabView(tab: .History, buttonAction: {} )
                    .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading)))
            case .Profile:
                GenericTabView(tab: .Profile, buttonAction: {} )
                    .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .trailing)))
            }
            
            TabBarView(tabView: $tabView)
        }
    }
}

#Preview {
    MainView()
}
