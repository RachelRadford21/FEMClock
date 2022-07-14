//
//  MorningEveningView.swift
//  FEMClock
//
//  Created by Rachel Radford on 7/11/22.
//

import SwiftUI

struct MorningEveningView: View {
    @EnvironmentObject var vm: ViewModel
    var body: some View {
        Text(vm.isAM ? "☀︎  GOOD MORNING,  IT'S CURRENTLY" : vm.isPM ? "☀︎  GOOD EVENING,  IT'S CURRENTLY" : "")
            .foregroundColor(Color.white)
            .font(.custom("Inter-Regular", size: 15))
            .frame(width: 300)
            .opacity(vm.isPresented ? 0.0 : 1.0)
    }
}

struct MorningEveningView_Previews: PreviewProvider {
    static var previews: some View {
        MorningEveningView()
            .environmentObject(ViewModel())
    }
}
