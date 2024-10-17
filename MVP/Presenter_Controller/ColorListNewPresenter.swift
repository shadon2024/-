//
//  ColorListNewPresenter.swift
//  MVP
//
//  Created by Admin on 17.10.2024.
//

import Foundation

final class ColorListNewPresenter: ColorListPresenterProtocol {
    
    private weak var view: ColorListViewProtocol?
    
    
    private var model: ColorListModel = ColorListModel()
    
    func setView(_ view: ColorListViewProtocol) {
        self.view = view
    }
    
    func numberOfSections() -> Int {
        return 1
    }
    
    func numbersOfRowInSections(_ section: Int) -> Int {
        return model.colorList.count
    }
    
    func titleForRow(at indexPath: IndexPath) -> String {
        let color = model.colorList[indexPath.row]
        return color.name
    }
    
    func backgroundColorForCell(at indexPath: IndexPath) -> (red: CGFloat, green: CGFloat, blue: CGFloat) {
        let color = model.colorList[indexPath.row]
        let resultColor: (red: CGFloat, green: CGFloat, blue: CGFloat) = (red: color.red, green: color.green, blue: color.blue)
        return resultColor
    }
    
    func didSelectColor(at indexPath: IndexPath) {
//        let color = model.colorList[indexPath.row]
//        showAlert(for: color)
        removeColor(at: indexPath.row)
    }
    
    func getTitleForActionButton() -> String {
        return "Add new color"
    }
    
    func actionButtonTapped() {
        addRandomColor()
    }
    
    private func showAlert(for model: ColorInfo) {
        let alertTitle: String = model.name
        let alertMessage: String = "Red: \(model.red), Green: \(model.green), Blue: \(model.blue)"
        
        view?.showAlert(title: alertTitle, message: alertMessage)
    }
    
    private func removeColor(at index: Int) {
        
        //model.removeColor(at: index)
        view?.reloadTable()
    }
    
    private func addRandomColor() {
        let newColor = ColorInfo(name: "Random Color",
                                 red: CGFloat.random(in: 0...1),
                                 green: CGFloat.random(in: 0...1),
                                 blue: CGFloat.random(in: 0...1))
        model.addColor(newColor)
        view?.reloadTable()
    }
    
    
}
