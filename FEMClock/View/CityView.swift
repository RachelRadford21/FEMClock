//
//  CityView.swift
//  FEMClock
//
//  Created by Rachel Radford on 7/9/22.
//

import SwiftUI

struct CityView: View {
    @EnvironmentObject var vm: ViewModel
    
    var body: some View {
        VStack {
            Text("IN \(vm.city), \(vm.country) ")
                .foregroundColor(Color.white)
                .font(.custom("Inter-ExtraBold", size: 25))
                .frame(width: 300)
                .opacity(vm.isPresented ? 0.0 : 1.0)
                .padding(.trailing, 20)
                .opacity(vm.isPresented ? 0.0 : 1.0)
        }
    }
}


struct CityView_Previews: PreviewProvider {
    static var previews: some View {
        CityView()
            .environmentObject(ViewModel())
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
