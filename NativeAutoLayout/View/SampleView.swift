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
        view.backgroundColor = .red
        return view
    }()
    
    let topLabel: UILabel = {
        let view = UILabel()
        view.textColor = .white
        view.backgroundColor = .blue
        view.text = "상단 텍스트입니다."
        view.font = .systemFont(ofSize: 14)
        return view
    }()
    
    let menuView: UIView = {
        let view = UIView()
        view.backgroundColor = .orange
        return view
    }()
    
    let cancelButton: UIButton = {
        let view = UIButton()
        view.setTitle("취소", for: .normal)
        view.setTitleColor(.white, for: .normal)
        view.backgroundColor = .red
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
        self.backgroundColor = .white
    }
    
    func setConstraints() {
        contentView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        contentView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        contentView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        contentView.widthAnchor.constraint(equalToConstant: 100).isActive = true
    }
//    {[
//        contentView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true,
//        contentView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
//        contentView.heightAnchor.constraint(equalToConstant: 100),
//        contentView.widthAnchor.constraint(equalToConstant: 100)
//    ]}
    
    
}
