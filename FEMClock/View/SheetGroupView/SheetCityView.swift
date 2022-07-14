//
//  SheetCityView.swift
//  FEMClock
//
//  Created by Rachel Radford on 7/11/22.
//

import SwiftUI

struct SheetCityView: View {
    @EnvironmentObject var vm: ViewModel
    var body: some View {
        VStack {
        Text("IN \(vm.city), \(vm.country) ")
            .foregroundColor(Color.white)
            .font(.custom("Inter-ExtraBold", size: 25))
            .frame(width: 300)
            .padding(.trailing, 100)
        }


    }
}

struct SheetCityView_Previews: PreviewProvider {
    static var previews: some View {
        SheetCityView()
            .environmentObject(ViewModel())
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
