//
//  TaskView.swift
//  Boredomo
//
//  Created by Ajmal Poovanath on 17/01/25.
//

import SwiftUI

struct TaskView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var task: String = "please wait..."

    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            
            Text("\(task)")
                .font(.custom("SFPro", size: 36))
                .foregroundStyle(Color.white)
            
        }
        .navigationBarBackButtonHidden(true)
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading) {
                Button{
                    presentationMode.wrappedValue.dismiss()
                }label: {
                    HStack{
                        Image(systemName: "chevron.left")
                            .foregroundStyle(Color.white)
                        Text("Home")
                            .foregroundStyle(Color.white)
                    }

                }
                
                                
            }
        }
        
    }
}

#Preview {
    TaskView()
}
