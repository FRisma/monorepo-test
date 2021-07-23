//
//  ViewController.swift
//  monorepo-test
//
//  Created by Franco on 19/07/21.
//

import UIKit
import Utils
import SharedUIComponents

class ViewController: UIViewController {
    
    private let customView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .lightGray
        view.layer.cornerRadius = 15
        return view
    }()
    
    private let titleLabel: RoundedLabel = {
        let label = RoundedLabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 16)
        return label
    }()
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(customView)
        view.addSubview(titleLabel)
        view.addSubview(imageView)
        
        NSLayoutConstraint.activate([
            customView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            customView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            customView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            customView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10)
        ])
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: customView.topAnchor, constant: 16),
            titleLabel.leadingAnchor.constraint(equalTo: customView.leadingAnchor, constant: 16),
        ])
        
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: customView.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: customView.centerYAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 400),
            imageView.heightAnchor.constraint(equalToConstant: 400),
        ])
        
        titleLabel.text = "Please donate \("30".percentageFormatted()) if you find this useful to:"
//        imageView.image = UIImage.utilsImage(named: "qrCode")
        imageView.image = UIImage.qrCodeImage
    }
}

