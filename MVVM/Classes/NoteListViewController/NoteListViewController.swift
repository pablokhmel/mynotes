//
//  Untitled.swift
//  MyNotes
//
//  Created by Pavel Khmialeuski1 on 23/05/2025.
//

import UIKit
import SwiftUI

class NoteListViewController: UIViewController {
    private var viewModel: NoteListViewModel
    
    init(viewModel: NoteListViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupNavigationBar()
    }
    
    private func setupView() {
        let rootView = NoteListScreen(viewModel: viewModel)
        let vc = UIHostingController(rootView: rootView)
        vc.view.frame = view.bounds
        
        addChild(vc)
        view.addSubview(vc.view)
        vc.didMove(toParent: self)
    }
    
    private func setupNavigationBar() {
        title = "List of notes"
        
        let addButton = UIBarButtonItem(
            barButtonSystemItem: .add,
            target: self,
            action: #selector(addNote)
        )
        
        navigationItem.rightBarButtonItem = addButton
    }
    
    @objc
    private func addNote() {
        viewModel.addNote()
    }
}
