//
//  AddNoteViewController.swift
//  MyNotes
//
//  Created by Pavel Khmialeuski1 on 26/05/2025.
//

import UIKit
import SwiftUI

class AddNoteViewController: UIViewController {
    private let viewModel: AddNoteViewModel
    init(viewModel: AddNoteViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        setupView()
        setupNavigationBar()
    }
    
    private func setupView() {
        let rootView = AddNoteScreen(viewModel: viewModel)
        let vc = UIHostingController(rootView: rootView)
        
        addChild(vc)
        view.addSubview(vc.view)
        vc.didMove(toParent: self)
        vc.view.frame = view.bounds
    }
    
    private func setupNavigationBar() {
        navigationItem.title = "Add Note"
    }
}
