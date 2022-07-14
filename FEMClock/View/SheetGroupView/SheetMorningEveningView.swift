//
//  SheetMorningEveningView.swift
//  FEMClock
//
//  Created by Rachel Radford on 7/12/22.
//

import SwiftUI

struct SheetMorningEveningView: View {
    @EnvironmentObject var vm: ViewModel
    var body: some View {
        Text(vm.isAM ? "☀︎  GOOD MORNING,  IT'S CURRENTLY" : vm.isPM ? "☀︎  GOOD EVENING,  IT'S CURRENTLY" : "")
            .foregroundColor(Color.white)
            .font(.custom("Inter-Regular", size: 15))
            .frame(width: 500)
      
    }
}

struct SheetMorningEveningView_Previews: PreviewProvider {
    static var previews: some View {
        SheetMorningEveningView()
            .environmentObject(ViewModel())
    }
}
