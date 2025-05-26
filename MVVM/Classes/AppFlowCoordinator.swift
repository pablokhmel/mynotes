import UIKit
import SwiftUI

class AppFlowCoordinator {
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    public func start() {
        let noteListViewModel = NoteListViewModel(flowCoordinator: self)
        let viewController = NoteListViewController(viewModel: noteListViewModel)
        navigationController.pushViewController(viewController, animated: false)
    }
    
    public func pushAddNoteScreen() {
        let addNoteViewModel = AddNoteViewModel(flowCoordinator: self)
        let viewController = AddNoteViewController(viewModel: addNoteViewModel)
        navigationController.present(viewController, animated: true)
    }
    
    public func dismiss() {
        navigationController.dismiss(animated: true)
    }
}
