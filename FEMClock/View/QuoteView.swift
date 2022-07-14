//
//  QuoteView.swift
//  FEMClock
//
//  Created by Rachel Radford on 7/9/22.
//

import SwiftUI

struct QuoteView: View {
    @EnvironmentObject var vm: ViewModel
    
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(Color.clear)
                .frame(width: 500, height: 300, alignment: .topLeading)
                .overlay(
                    VStack {
                        QuoteStringView()
                        
                    }
                )
        }
    }
}

struct QuoteView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteView()
            .environmentObject(ViewModel())
            .previewInterfaceOrientation(.landscapeRight)
    }
}
