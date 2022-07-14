//
//  ChevronArrowView.swift
//  FEMClock
//
//  Created by Rachel Radford on 7/14/22.
//

import SwiftUI

struct ChevronArrowView: View {
    @EnvironmentObject var vm: ViewModel
    var body: some View {
        Image(systemName: vm.isPresented ?  "chevron.up" : "chevron.down")
            .resizable()
            .foregroundColor(.white)
            .frame(width: 10, height: 7)
            .padding(.leading, 75)
    }
}

struct ChevronArrowView_Previews: PreviewProvider {
    static var previews: some View {
        ChevronArrowView()
            .environmentObject(ViewModel())
    }
}
