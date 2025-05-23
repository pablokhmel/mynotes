//
//  NoteListScreen.swift
//  MyNotes
//
//  Created by Pavel Khmialeuski1 on 23/05/2025.
//

import SwiftUI

struct NoteListScreen: View {
    @ObservedObject var viewModel: NoteListViewModel
    var body: some View {
        Text("You don't have any notes yet. Create one!")
            .foregroundStyle(Color.gray)
    }
}

#Preview {
    NoteListScreen(viewModel: NoteListViewModel())
}
