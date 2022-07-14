//
//  MoreLessView.swift
//  FEMClock
//
//  Created by Rachel Radford on 7/10/22.
//

import SwiftUI

struct MoreLessView: View {
    @EnvironmentObject var vm: ViewModel
    var body: some View {
        ZStack {
    
        RoundedRectangle(cornerRadius: 40)
            .foregroundColor(.white)
            .frame(width: 115, height: 45)
            .overlay {
                Button {
                    vm.isPresented.toggle()
                    
                } label: {
                    MoreLessLabelView()
//                    Text(vm.isPresented ? "L E S S" : "M O R E")
//                        .foregroundColor(.black)
//                        .font(.custom("Inter-Regular", size: 13))
//                        .padding(.leading, -30)
                    
                }.overlay {
                    ChevronCircleView()
//                    Circle()
//                        .frame(width: 30, height: 30)
//                        .padding(.leading, 75)
                    
                }
                .overlay {
                    ChevronArrowView()
//                    Image(systemName: vm.isPresented ?  "chevron.up" : "chevron.down")
//                        .resizable()
//                        .foregroundColor(.white)
//                        .frame(width: 10, height: 7)
//                        .padding(.leading, 75)
                        
                }
                .sheet(isPresented: $vm.isPresented) {
                    SheetView()

                }
            }
        }.opacity(vm.isPresented ? 0.0 : 1.0)
    }
}

struct MoreLessView_Previews: PreviewProvider {
    static var previews: some View {
        MoreLessView()
            .environmentObject(ViewModel())
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
