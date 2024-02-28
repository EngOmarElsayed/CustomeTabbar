//
//  GenericTabView.swift
//  CustomeTabbar
//
//  Created by Eng.Omar Elsayed on 25/02/2024.
//

import SwiftUI

struct GenericTabView: View {
    let tab: TabViews
    let buttonAction: () -> Void
    
    var body: some View {
            ZStack {
                tab.getColor().ignoresSafeArea()
                VStack(spacing: 14){
                    Text(tab.rawValue)
                        .font(.title)
                        .fontDesign(.rounded)
                        .fontWeight(.semibold)
                    
                    if tab.doesItHaveButton() {
                        Button(action: {
                            buttonAction()
                        }, label: {
                            Text(tab.getButtonText())
                                .padding(10)
                                .background(.gray.opacity(0.25))
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        })
                    }
                }
            }
    }
}

#Preview {
    GenericTabView(tab: .Home, buttonAction: {})
        .environmentObject(NavigationManger())
}
