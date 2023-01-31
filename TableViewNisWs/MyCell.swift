//
//  MyCell.swift
//  TableViewNisWs
//  Created by Dmitry Alexandrov
//
import UIKit

class MyCell: UITableViewCell
{
    let profileImageButton: UIButton = {
        let control = UIButton()
        control.backgroundColor = UIColor.yellow //white
        control.layer.cornerRadius = 4 // 18
        control.clipsToBounds = false
        control.setImage(UIImage(named: "Profile"), for: .normal)
        control.translatesAutoresizingMaskIntoConstraints = false // required
        return control
    }()
    
    let dateLabel: UILabel = {
        let control = UILabel()
        control.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        control.textAlignment = .center
        control.textColor = UIColor.red
        control.text = "30"
        control.translatesAutoresizingMaskIntoConstraints = false // required
        return control
    }()
    
    let dayLabel: UILabel = {
        let control = UILabel()
        control.font = UIFont.systemFont(ofSize: 12)
        control.textAlignment = .center
        control.textColor = UIColor.systemBlue
        control.text = "Fri"
        control.translatesAutoresizingMaskIntoConstraints = false // required
        return control
    }()

    let distanceLabel: UILabel = {
        let control = UILabel()
        control.font = UIFont.systemFont(ofSize: 14)
        control.textColor = UIColor.white //lightGray
        control.text = "2000 m"
        control.translatesAutoresizingMaskIntoConstraints = false // required
        return control
    }()

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
        addView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func addView() {
        backgroundColor = UIColor.blue //black
        
        addSubview(profileImageButton)
        addSubview(dateLabel)
        addSubview(dayLabel)
        addSubview(distanceLabel)

        profileImageButton.leftAnchor.constraint(equalTo: leftAnchor, constant: 5).isActive = true
        profileImageButton.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        profileImageButton.heightAnchor.constraint(equalToConstant: 36).isActive = true
        profileImageButton.widthAnchor.constraint(equalToConstant: 36).isActive = true

        dateLabel.centerYAnchor.constraint(equalTo: profileImageButton.centerYAnchor, constant: -6).isActive =  true
        dateLabel.centerXAnchor.constraint(equalTo: profileImageButton.centerXAnchor).isActive =  true

        
        dayLabel.centerYAnchor.constraint(equalTo: profileImageButton.centerYAnchor, constant: 9).isActive =  true
        dayLabel.centerXAnchor.constraint(equalTo: profileImageButton.centerXAnchor).isActive =  true

        distanceLabel.topAnchor.constraint(equalTo: profileImageButton.bottomAnchor, constant: 10).isActive = true
        distanceLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 5).isActive = true
    }
        
}
