//
//  ViewControllerScreen.swift
//  JustViewCode
//
//  Created by Jonattan Moises Sousa on 07/05/21.
//

import UIKit

final class ViewControllerScreen: UIView {
    
    lazy var button: UIButton = {
        let view = UIButton(frame: .zero)
        view.backgroundColor = .red
        view.setTitle("fetch", for: .normal)
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
        
        button.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().inset(15)
            make.bottom.equalTo(self).inset(15)
            make.height.equalTo(50)
        }
    }
    func setupAdditionalConfiguration() {
        // Setup adicional
        backgroundColor = .darkGray
    }
}
