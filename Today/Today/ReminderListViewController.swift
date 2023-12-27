//
//  ViewController.swift
//  Today
//
//  Created by 김지훈 on 2023/12/27.
//

import UIKit
//
//class ReminderListViewController: UICollectionViewController{
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }
//
//    //그룹화된 모양으로 새 목록 구성 변수를 생성하는 이름의 새 함수 생성
//    private func listLayout() -> UICollectionViewCompositionalLayout {
//        var listConfiguration = UICollectionLayoutListConfiguration(appearance: .grouped)
////        UICollectionLayoutListConfiguration(appearance: .grouped)
//    }
//    
//}

class ReminderListViewController: UICollectionViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let listLayout = listLayout()
        collectionView.collectionViewLayout = listLayout
        
    }


    private func listLayout() -> UICollectionViewCompositionalLayout {
        var listConfiguration = UICollectionLayoutListConfiguration(appearance: .grouped)
        listConfiguration.showsSeparators = false
        listConfiguration.backgroundColor = .clear
        return UICollectionViewCompositionalLayout.list(using: listConfiguration)
    }
}

