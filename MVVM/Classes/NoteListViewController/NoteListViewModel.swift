//
//  NoteListViewModel.swift
//  MyNotes
//
//  Created by Pavel Khmialeuski1 on 23/05/2025.
//

import SwiftUI

class NoteListViewModel: ObservableObject {
    let flowCoordinator: AppFlowCoordinator?
    
    init(flowCoordinator: AppFlowCoordinator? = nil) {
        self.flowCoordinator = flowCoordinator
    }
    
    func addNote() {
        flowCoordinator?.pushAddNoteScreen()
    }
}
