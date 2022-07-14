//
//  MoreLessLabelView.swift
//  FEMClock
//
//  Created by Rachel Radford on 7/14/22.
//

import SwiftUI

struct MoreLessLabelView: View {
    @EnvironmentObject var vm: ViewModel
    var body: some View {
        Text(vm.isPresented ? "L E S S" : "M O R E")
            .foregroundColor(.black)
            .font(.custom("Inter-Regular", size: 13))
            .padding(.leading, -30)
    }
}

struct MoreLessLabelView_Previews: PreviewProvider {
    static var previews: some View {
        MoreLessLabelView()
            .environmentObject(ViewModel())
    }
}
