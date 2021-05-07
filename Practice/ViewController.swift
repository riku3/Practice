//
//  ViewController.swift
//  Practice
//
//  Created by riku on 2021/05/07.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // ボタン作成
        let customButton = UIButton()

        // スクリーンサイズ取得
        let screenWidth:CGFloat = self.view.frame.width
        let screenHeight:CGFloat = self.view.frame.height

        // ボタンサイズ指定
        let buttonWidth: CGFloat = 100
        let buttonHeight: CGFloat = 100

        // ボタンに反映（中央に位置調整）
        customButton.frame = CGRect(
            x: screenWidth/2-buttonWidth/2,
            y: screenHeight/2-buttonHeight/2,
            width: buttonWidth,
            height: buttonHeight)

        // ボタンの背景色を設定(わかりやすいように一時的にlightGrayを設定)
        customButton.backgroundColor = UIColor.lightGray

        // アプリ標準のシステム画像を設定
        customButton.setImage(UIImage(systemName: "location.fill"), for: .normal)
        // 画像の色をdarkGrayに変更
        customButton.tintColor = .darkGray

        // 縦幅・横幅いっぱいに画像を表示
        customButton.contentHorizontalAlignment = .fill
        customButton.contentVerticalAlignment = .fill

        // ボタンを丸くする(サイズ/2で設定)
        customButton.layer.cornerRadius = 50
        // 画像を縮小する(マージンのようなもの)
        customButton.imageEdgeInsets = UIEdgeInsets(top: 30, left: 30, bottom: 30, right: 30)

        // ボタンの背景色を白に戻す
        customButton.backgroundColor = UIColor.white
        // 影の色
        customButton.layer.shadowColor = UIColor.red.cgColor
        // 影のぼかし？
        customButton.layer.shadowRadius = 3
        // 影の位置
        customButton.layer.shadowOffset = CGSize(width: 30, height: 30)
        // 影の濃さ
        customButton.layer.shadowOpacity = 0.9

        // ボタンをViewに追加
        view.addSubview(customButton)
    }
}

