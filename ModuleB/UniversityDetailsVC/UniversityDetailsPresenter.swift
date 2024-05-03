//
//  DetailsPresenter.swift
//  ModuleB
//
//  Created by Mohamad Basuony on 03/05/2024.
//

import Foundation
import NetworkModule

public protocol UpdateProtocol : AnyObject {
    func updateUniversities()
}

protocol UniversityDetailsDelegate: AnyObject {
    func setupUI()
}

protocol UniversityDetailsPresenter {
    
    var university : UniversityModel? {get}
    func reloadUniversities()
    func dismiss()
}

class UniversityDetailsPresenterImplementation: UniversityDetailsPresenter {
        
    var university : UniversityModel?
    
    fileprivate weak var delegate: UniversityDetailsDelegate?
    fileprivate var router: UniversityDetailsRouter?
    fileprivate var updateDelegate: UpdateProtocol?
    
    init(delegate: UniversityDetailsDelegate,
         router : UniversityDetailsRouter,
         university : UniversityModel?,
         updateDelegate : UpdateProtocol
    ) {
        self.delegate = delegate
        self.router = router
        self.university = university
        self.updateDelegate = updateDelegate
//        self.delegate?.setupUI()
    }
    
    func reloadUniversities(){
        updateDelegate?.updateUniversities()
        dismiss()
    }
    
    func dismiss(){
        router?.dismiss()
    }
}
