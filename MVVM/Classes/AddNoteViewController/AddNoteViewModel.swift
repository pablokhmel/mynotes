//
//  AddNoteViewModel.swift
//  MyNotes
//
//  Created by Pavel Khmialeuski1 on 26/05/2025.
//

import SwiftUI

class AddNoteViewModel: ObservableObject {
    @Published var title: String = ""
    @Published var content: String = ""
    
    private let flowCoordinator: AppFlowCoordinator?
    
    init(flowCoordinator: AppFlowCoordinator? = nil) {
        self.flowCoordinator = flowCoordinator
    }
    
    public func close() {
        flowCoordinator?.dismiss()
    }
    
    public func save() {
        flowCoordinator?.dismiss()
    }
}
