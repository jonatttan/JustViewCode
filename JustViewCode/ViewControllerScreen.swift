//
//  ViewControllerScreen.swift
//  JustViewCode
//
//  Created by Jonattan Moises Sousa on 07/05/21.
//

import UIKit

final class ViewControllerScreen: UIView {
    
    lazy var button: UIButton = { // Clouse de criação. Só é possivel chamada de método dentro se for lazy
        let view = UIButton(frame: .zero)
        view.backgroundColor = .red
        view.setTitle("fetch", for: .normal)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension ViewControllerScreen: CodeView {
    func buildViewHierarchy() {
        // Adicionar View
        addSubview(button)
    }
    func setupConstraints() {
        // Configurar constraints
        button.translatesAutoresizingMaskIntoConstraints = false
        button.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15).isActive = true
        button.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15).isActive = true
        button.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -15)    .isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    func setupAdditionalConfiguration() {
        // Setup adicional
        backgroundColor = .darkGray
    }
}
