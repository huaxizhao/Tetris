//
//  ViewController.swift
//  Tetris
//
//  Created by Lingxiu on 15/12/3.
//  Copyright © 2015年 Lingxiu. All rights reserved.
//

import UIKit
// 导入AVFoundation是为了播放背景音乐
import AVFoundation

class ViewController: UIViewController {
    
    let MARGINE: CGFloat = 10
    let BUTTON_SIZE: CGFloat = 48
    let BUTTON_ALPHA: CGFloat = 0.4
    let TOOLBAR_HEIGHT: CGFloat = 44
    var screenWidth: CGFloat!
    var screenHeight: CGFloat!
    var gameView: GameVIew!
    // 定义背景音乐的播放对象
    var bgMusicPlayer: AVAudioPlayer!
    // 定义显示当前速度的UILabel
    var speedShow: UILabel!
    // 定义显示当前积分的UILabel
    var scoreShow: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let rect = UIScreen.mainScreen().bounds
        screenWidth = rect.size.width
        screenHeight = rect.size.height
        // 添加工具条
        self.addToolBar()
        
        
    }

    // 定义在顶部添加工具条的方法
    func addToolBar() {
        let toolBar = UIToolbar(frame: CGRectMake(0, MARGINE * 2, screenWidth, TOOLBAR_HEIGHT))
        self.view.addSubview(toolBar)
        
        let speedLabel = UILabel(frame: CGRectMake(0, 0, 50, TOOLBAR_HEIGHT))
        speedLabel.text = "速度 : "
        let speedLabelItem = UIBarButtonItem(customView:  speedLabel)
        
        speedShow = UILabel(frame: CGRectMake(0, 0, 20, TOOLBAR_HEIGHT))
        speedShow.textColor = UIColor.redColor()
        let speedShowItem = UIBarButtonItem(customView: speedShow)
        
        let scoreLabel = UILabel(frame: CGRectMake(0, 0, 90, TOOLBAR_HEIGHT))
        scoreLabel.text = "当前积分 : "
        let scoreLabelItem = UIBarButtonItem(customView: scoreLabel)
        
        scoreShow = UILabel(frame: CGRectMake(0, 0, 40, TOOLBAR_HEIGHT))
        scoreShow.textColor = UIColor.redColor()
        let scoreShowItem = UIBarButtonItem(customView: scoreShow)
        
        let flexItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.FlexibleSpace, target: nil, action: nil)
        // 为工具条设置工具项
        toolBar.items = [speedLabelItem, speedShowItem, flexItem, scoreLabelItem, scoreShowItem]
    }


}

