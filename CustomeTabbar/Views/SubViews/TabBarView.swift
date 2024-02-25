//
//  TabMenuView.swift
//  CustomeTabbar
//
//  Created by Eng.Omar Elsayed on 25/02/2024.
//

import SwiftUI

struct TabBarView: View {
    @EnvironmentObject var tabManger: TabViewManger
    
    var body: some View {
        HStack(spacing: 40) {
            ForEach(TabViews.allCases, id: \.self) { tab in
                Button(action: {
                    withAnimation {
                        tabManger.selectedTab = tab
                    }
                }, label: {
                    Image(systemName: tab.getTabLabel())
                        .fontWeight(.bold)
                        .foregroundStyle(tab == tabManger.selectedTab ? .blue: .gray)
                        .scaleEffect(x: 1.2, y: 1.2)
                })
            }
        }
        .padding(30)
        .background(.thinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

#Preview {
    TabBarView()
        .environmentObject(TabViewManger())
}
