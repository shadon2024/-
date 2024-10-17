//
//  ColorListPresenterProtocol.swift
//  MVP
//
//  Created by Admin on 15.10.2024.
//

import Foundation

protocol ColorListPresenterProtocol: AnyObject {
    
    // Устанавливаем View для Presenter
    func setView(_ view: ColorListViewProtocol)
    
    // Возврашает количество секций в таблице
    func numberOfSections() -> Int
    
    // Возврашает количество строк в определенной секций
    func numbersOfRowInSections(_ section : Int) -> Int
    
    // Возврашает текст для определенной ячейки
    func titleForRow(at indexPath: IndexPath) -> String
    
    // Возврашает параметры для установки цвета ячейки
    func backgroundColorForCell(at indexPath: IndexPath) -> (red: CGFloat, green: CGFloat, blue: CGFloat)
    
    // Метод вызывается при нажатии на ячейку
    func didSelectColor(at indexPath: IndexPath)
    
    // Метод возврашает название для кнопки действия
    func getTitleForActionButton() -> String
    
    // Метод вызывается при нажатии на кнопку действия
    func actionButtonTapped()
    
}
