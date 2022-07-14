//
//  QuoteStringView.swift
//  FEMClock
//
//  Created by Rachel Radford on 7/11/22.
//

import SwiftUI

struct QuoteStringView: View {
    @EnvironmentObject var vm: ViewModel
    var body: some View {
        
        Text("\" \(vm.quoteText) \" \n\n \(vm.author)")
          .foregroundColor(.white.opacity(0.8))
          .font(.custom("Inter-Bold", size: 25))
          .frame(width: 600, height: 250, alignment: .leading)
          .padding(.bottom, -10)
          .opacity(vm.isPresented ? 0.0 : 1.0)
    }
}

struct QuoteStringView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteStringView()
            .environmentObject(ViewModel())
    }
}
