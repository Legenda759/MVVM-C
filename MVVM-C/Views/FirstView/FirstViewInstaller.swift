//
//  FirstViewInstaller.swift
//  MVVM-C
//
//  Created by Legenda_759 on 06/12/22.
//

import UIKit
import SnapKit

protocol FirstViewInstaller: ViewInstaller {
    var fullName: UILabel! { get set }
    var showMore: UIButton! { get set }
}

extension FirstViewInstaller {
    
    func initSubviews() {
        
        /// mainView
        mainView.backgroundColor = .white
        
        /// fullName
        fullName = UILabel()
        fullName.config(
            font: UIFont.boldSystemFont(ofSize: 25),
            color: UIColor.black,
            textAlignment: .center,
            numberOfLines: 0
        )
        
        /// showMore
        showMore = UIButton()
        showMore.config(
            backgroundColor: UIColor.systemOrange,
            title: "ShowMore",
            titleColor: UIColor.white,
            cornerRadius: 10
        )
        
    }
    
    func embedSubviews() {
        mainView.addSubviews(
            fullName,
            showMore
        )
    }
    
    func addSubviewsConstraints() {
        
        /// fullName
        fullName.snp.makeConstraints { make in
            make.centerY.centerX.equalToSuperview()
            make.left.right.equalToSuperview().inset(10)
        }
        
        /// showMore
        showMore.snp.makeConstraints { make in
            make.top.equalTo(fullName.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
            make.height.equalTo(50)
            make.width.equalTo(200)
        }
        
    }
    
}
