//
//  TaskView.swift
//  Boredomo
//
//  Created by Ajmal Poovanath on 17/01/25.
//

import SwiftUI

struct TaskView: View {
    @State var task: String = "please wait..."

    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            
            Text("\(task)")
                .font(.custom("SFPro", size: 36))
                .foregroundStyle(Color.white)
            
        }
        
    }
}

#Preview {
    TaskView()
}
