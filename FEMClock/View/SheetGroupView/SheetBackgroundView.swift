//
//  SheetBackgroundView.swift
//  FEMClock
//
//  Created by Rachel Radford on 7/11/22.
//

import SwiftUI

struct SheetBackgroundView: View {
    @EnvironmentObject var vm: ViewModel
    var body: some View {
        VStack {
            Image(vm.isAM ? "bg-image-daytime" : "bg-image-nighttime")
                .resizable()
                .aspectRatio(CGSize(width: 5.5, height: 5), contentMode: .fill)
                .brightness(-0.25)
                .opacity(0.89)
                .ignoresSafeArea()
        }
    }
}

struct SheetBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        SheetBackgroundView()
            .environmentObject(ViewModel())
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
