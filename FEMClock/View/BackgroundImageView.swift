//
//  BackgroundImageView.swift
//  FEMClock
//
//  Created by Rachel Radford on 7/9/22.
//

import SwiftUI

struct BackgroundImageView: View {
    @EnvironmentObject var vm: ViewModel
    
    var body: some View {
        ZStack{
            Image(vm.isAM ? "bg-image-daytime" : "bg-image-nighttime")
                .resizable()
                .aspectRatio(CGSize(width: 5.5, height: 5), contentMode: .fill)
                .brightness(-0.25)
                .opacity(0.89)
                .ignoresSafeArea()
                .blur(radius: vm.isPresented ? 5.0 : 0.0)
              
        }
        .task {
            await vm.getAddress()
            await vm.fetchTime()
            await vm.getQuote()
            vm.getAmPm()
        }
        
    }
}

struct BackgroundImageView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundImageView()
            .previewInterfaceOrientation(.landscapeRight)
            .environmentObject(ViewModel())
    }
}
