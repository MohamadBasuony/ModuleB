//
//  DetailsConfig.swift
//  ModuleB
//
//  Created by Mohamad Basuony on 03/05/2024.
//

import Foundation
import NetworkModule

public protocol UniversityDetailsConfig {
    func configure(view: UniversityDetailsVC , university: UniversityModel? , updateDelegate : UpdateProtocol)
}

public class UniversityDetailsConfigImplementation: UniversityDetailsConfig {
    public init() {}
    public func configure(view: UniversityDetailsVC , university: UniversityModel? , updateDelegate : UpdateProtocol) {
        let router = UniversityDetailsRouterImplementation(view: view)
        let presenter = UniversityDetailsPresenterImplementation(delegate: view, router: router, university: university, updateDelegate: updateDelegate)
        view.presenter = presenter
    }
}
