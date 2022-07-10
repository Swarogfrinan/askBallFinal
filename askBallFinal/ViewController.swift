//
//  ViewController.swift
//  askBallFinal
//
//  Created by Ilya Vasilev on 08.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = [#imageLiteral(resourceName: "ball1.png"),#imageLiteral(resourceName: "ball2.png"),#imageLiteral(resourceName: "ball3.png"),#imageLiteral(resourceName: "ball4.png"),#imageLiteral(resourceName: "ball5.png")]

    
    override func viewDidLoad() {
        view.backgroundColor = .systemBlue
        title = "Magic Ball"
        askQuestionButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        
        layout()
                            
    }
                                    
    private lazy var answerLabel: UILabel = {
        let label = UILabel()
        label.text = "debil"
        label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
    
        private lazy var askQuestionButton: UIButton = {
        let button = UIButton()
        button.setTitle("Ask me for your", for: .normal)
        button.setTitleColor(.systemYellow, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
            return button
    }()
    
    private lazy var magicBallImage: UIImageView = {
    let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
    imageView.image = ballArray.first
            return imageView
    }()

    @objc func buttonPressed() {
        print("magicBall сменил свою картинку на рандомную в массиве")
        magicBallImage.image = ballArray.randomElement()
    }
   
    private func layout() {
[answerLabel, askQuestionButton, magicBallImage].forEach {
    view.addSubview($0) }
            let indent: CGFloat = 12
            NSLayoutConstraint.activate([
                
                magicBallImage.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                magicBallImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                
                answerLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                answerLabel.bottomAnchor.constraint(equalTo: magicBallImage.topAnchor, constant: 100),
                
                askQuestionButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                askQuestionButton.topAnchor.constraint(equalTo: magicBallImage.bottomAnchor,constant: 100),
                
               
//
//
//                magicBallImage.centerXAnchor.constraint(equalTo: view.trailingAnchor),
//                magicBallImage.centerYAnchor.constraint(equalTo: view.bottomAnchor)
                
//
//                askQuestionButton.leadingAnchor.constraint(equalTo: answerLabel.leadingAnchor),
//                askQuestionButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: indent)
                
            ])
            }
}
