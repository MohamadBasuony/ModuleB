//
//  DetailsRouter.swift
//  ModuleB
//
//  Created by Mohamad Basuony on 03/05/2024.
//

import Foundation
protocol UniversityDetailsRouter {
    func dismiss()
}

class UniversityDetailsRouterImplementation: UniversityDetailsRouter {

    fileprivate weak var view: UniversityDetailsVC?
    
    init(view: UniversityDetailsVC) {
        self.view = view
    }
    
    func dismiss() {
        view?.dismiss(animated: true)
//        navigationController?.popViewController(animated: true)
    }
}
