//
//  SampleView.swift
//  NativeAutoLayout
//
//  Created by Carki on 2023/01/03.
//

import UIKit

final class SampleView: UIView {
    
    let contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    let topLabel: UILabel = {
        let view = UILabel()
        view.textColor = .white
        view.backgroundColor = .blue
        view.text = "상단 텍스트입니다."
        view.textAlignment = .center
        view.font = .systemFont(ofSize: 14)
        return view
    }()
    
    let menuView: UIView = {
        let view = UIView()
        view.backgroundColor = .brown
        return view
    }()
    
    let cancelButton: UIButton = {
        let view = UIButton()
        view.setImage(UIImage(systemName: "xmark"), for: .normal)
        view.tintColor = .white
        return view
    }()
    
    let okButton: UIButton = {
        let view = UIButton()
        view.setTitle("확인", for: .normal)
        view.setTitleColor(.white, for: .normal)
        view.backgroundColor = .green
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
        [topLabel, menuView, cancelButton, okButton].forEach {
            contentView.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        self.addSubview(contentView)
        contentView.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = .black.withAlphaComponent(0.3)
    }
    
    func setConstraints() {
        let diviceWidth = UIScreen.main.bounds.width
        let diviceHeight = UIScreen.main.bounds.height
        
        contentView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        contentView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        contentView.widthAnchor.constraint(equalToConstant: diviceWidth * 0.8).isActive = true
        contentView.heightAnchor.constraint(equalToConstant: diviceHeight * 0.5).isActive = true
        
        topLabel.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor).isActive = true
        topLabel.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor).isActive = true
        topLabel.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor).isActive = true
        topLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        menuView.topAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: 0).isActive = true
        menuView.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor).isActive = true
        menuView.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor).isActive = true
        menuView.bottomAnchor.constraint(equalTo: cancelButton.topAnchor, constant: 0).isActive = true
        menuView.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        cancelButton.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor).isActive = true
        cancelButton.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor).isActive = true
        cancelButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        cancelButton.widthAnchor.constraint(equalToConstant: 40).isActive = true
        
        okButton.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor).isActive = true
        okButton.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor).isActive = true
        okButton.bottomAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.bottomAnchor).isActive = true
        okButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
    }
    
    
}
