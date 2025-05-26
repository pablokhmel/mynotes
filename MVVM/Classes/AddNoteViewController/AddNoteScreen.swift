//
//  AddNoteScreen.swift
//  MyNotes
//
//  Created by Pavel Khmialeuski1 on 26/05/2025.
//

import SwiftUI

struct AddNoteScreen: View {
    @ObservedObject var viewModel: AddNoteViewModel

    var body: some View {
        VStack {
            HStack {
                Button {
                    viewModel.close()
                } label: {
                    Text("Close")
                }
                
                Spacer()
                
                Button {
                    viewModel.save()
                } label: {
                    Text("Save")
                }
            }
    
            TextField("Title", text: $viewModel.title)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            TextEditor(text: $viewModel.content)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                )
            Spacer()
        }
        .padding()
    }
}

#Preview {
    AddNoteScreen(viewModel: AddNoteViewModel())
}
