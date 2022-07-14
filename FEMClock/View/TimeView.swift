//
//  TimeView.swift
//  FEMClock
//
//  Created by Rachel Radford on 7/9/22.
//

import SwiftUI

struct TimeView: View {
    @EnvironmentObject var vm: ViewModel
    var body: some View {
        let trimmedString = vm.currentTime.replacingOccurrences(of: "^0+", with: "", options: .regularExpression)
            VStack {
                Text("\(trimmedString)")
                    .foregroundColor(Color.white)
                    .font(.custom("Inter-ExtraBold", size: 75))
                    .frame(width: 500)
                    .padding(.leading, 200)
            }.opacity(vm.isPresented ? 0.0 : 1.0)            
    }
   
}

struct TimeView_Previews: PreviewProvider {
    static var previews: some View {
        TimeView()
            .environmentObject(ViewModel())
            .previewInterfaceOrientation(.landscapeRight)
    }
}
