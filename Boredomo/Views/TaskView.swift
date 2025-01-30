//
//  TaskView.swift
//  Boredomo
//
//  Created by Ajmal Poovanath on 17/01/25.
//

import SwiftUI

struct TaskView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var taskResponse: String = "please wait..."

    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            
            Text("\(taskResponse)")
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
        .onAppear {
            Task {
                do {
                    taskResponse = try await TaskManager().getTask()
                } catch {
                    taskResponse = "Failed to fetch task, please try again later."
                    print("Failed to fetch task: \(error)")
                }
            }
        }
        
    }
}

#Preview {
    TaskView()
}
