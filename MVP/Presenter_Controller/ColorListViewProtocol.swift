//
//  ColorListViewProtocol.swift
//  MVP
//
//  Created by Admin on 15.10.2024.
//

import Foundation

protocol ColorListViewProtocol: AnyObject {
    func reloadTable()
    func showAlert(title: String, message: String)
}
