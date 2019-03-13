//
//  MemoReadVC.swift
//  MyMemory
//
//  Created by Jkookoo on 08/03/2019.
//  Copyright © 2019 Jkookoo. All rights reserved.
//

import UIKit

class MemoReadVC: UIViewController {
    var param: MemoData?
    @IBOutlet var subject: UILabel!
    @IBOutlet var contents: UILabel!
    @IBOutlet var img: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.subject.text = param?.title
        self.contents.text = param?.contents
        self.img.image = param?.image
        
        let formatter = DateFormatter()
        formatter.dateFormat = "dd일 HH:mm분에 작성됨"
        let dateString = formatter.string(from: (param?.regdata)!)
        
        self.navigationItem.title = dateString
    }
}
