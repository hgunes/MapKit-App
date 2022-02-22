//
//  LocationRequestController.swift
//  MapKit-App
//
//  Created by Harun Gunes on 20/02/2022.
//

import UIKit
import MapKit

class LocationRequestController: UIViewController {
  
  let imageView: UIImageView = {
    let iv = UIImageView()
    iv.contentMode = .scaleAspectFit
    iv.image = UIImage(named: "blue-pin")
    return iv
  }()
  
  let allowLocationLabel: UILabel = {
    let label = UILabel()
    let attributedText = NSMutableAttributedString(string: "Allow location\n", attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 24)])
    attributedText.append(NSAttributedString(string: "Please enable location services.", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 16)]))
    label.numberOfLines = 0
    label.textAlignment = .center
    label.attributedText = attributedText
    return label
  }()
  
  let button: UIButton = {
    let button = UIButton(type: .system)
    button.setTitle("Enable location", for: .normal)
    button.backgroundColor = .mainBlue()
    button.setTitleColor(.white, for: .normal)
    button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
    button.layer.cornerRadius = 5
    button.addTarget(self, action: #selector(handleRequestLocation), for: .touchUpInside)
    return button
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    configure()
  }
  
  
  private func configure() {
    view.backgroundColor = .white
    
    view.addSubview(imageView)
    view.addSubview(allowLocationLabel)
    view.addSubview(button)
    
    imageView.translatesAutoresizingMaskIntoConstraints = false
    allowLocationLabel.translatesAutoresizingMaskIntoConstraints = false
    button.translatesAutoresizingMaskIntoConstraints = false
    
    imageView.anchor(top: view.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 140, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 200, height: 200)
    imageView.centerX(inView: view)
    
    allowLocationLabel.anchor(top: imageView.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 32, paddingLeft: 32, paddingBottom: 0, paddingRight: 32, width: 0, height: 0)
    allowLocationLabel.centerX(inView: view)
    
    button.anchor(top: allowLocationLabel.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 24, paddingLeft: 32, paddingBottom: 0, paddingRight: 32, width: 0, height: 50)
    
  }
  
  
  @objc
  func handleRequestLocation() {
    print("ENABLE")
  }
}
