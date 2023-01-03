//
//  SampleView.swift
//  NativeAutoLayout
//
//  Created by Carki on 2023/01/03.
//

import UIKit

final class SampleView: UIView {
    
    let testViewOne: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        return view
    }()
    
    let testViewTwo: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureUI()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureUI() {
        [testViewOne, testViewTwo].forEach {
            self.addSubview($0)
        }
    }
    
    func setConstraints() {
        testViewOne.translatesAutoresizingMaskIntoConstraints = false
        testViewOne.topAnchor.constraint(equalTo: self.topAnchor, constant: 20).isActive = true
        testViewOne.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
        testViewOne.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 20).isActive = true
    
        testViewTwo.translatesAutoresizingMaskIntoConstraints = false
        testViewTwo.topAnchor.constraint(equalTo: self.topAnchor, constant: 20).isActive = true
        testViewTwo.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
        testViewTwo.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 20).isActive = true
    }
    
    
}
