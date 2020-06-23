//
//  ViewController.swift
//  iOSHomework2
//
//  Created by Bodour Alrashidi on 6/7/20.
//  Copyright © 2020 Bodour Alrashidi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var membersNamesArray  : [String] = [""]
    
    var convertToLetter = true
    @IBOutlet weak var secretSocietyNameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBAction func addMember(_ sender: Any) {
        
        let member = nameTextField.text!
       
    
        
        
        
        // MARK: -   1️⃣ تحت الخط membersNamesArray إلي المصفوفه memberقم بإضافة المتغير
        membersNamesArray.append(member)
        
        
        // MARK: -   النهاية
        
        nameTextField.text = ""
    }
    
    
    
    
    @IBAction func letterButton(_ sender: Any) {
        
        // MARK: -  4️⃣ functionCall داخل المتغير  secretNameLetter قم باستدعاء الدالة
        
        let functionCall = encryptwith(emoji: false, array: membersNamesArray)
        
        
        // MARK: -   النهاية
        
        
        secretSocietyNameLabel.text =  functionCall
    }
    
    
    
    
    @IBAction func emojiButton(_ sender: Any) {
        
        
        
        // MARK: -  5️⃣ functionCall داخل المتغير  secretNameEmoji قم باستدعاء الدالة
        
        let functionCall = encryptwith(emoji: true, array: membersNamesArray)
        
        // MARK: -   النهاية
        
        secretSocietyNameLabel.text =  functionCall
        
        
    }
    
    
    
    
    // MARK: - 2️⃣ تحت هذا الخط secretNameLetter قم بكتابة الداله
    func secretNameLetter (membernamearry : [String]) -> String {
        var letterString: [String] = []
        for i in 0..<membernamearry.count{
            letterString.append(String(membernamearry[i].prefix(1).lowercased()))
        }
        membersNamesArray.removeAll()
        return letterString.joined()
    }
    
    
    
    // MARK: -   النهاية
    
    let emojiDictionary = [
               "a":"😀",
               "b":"😎",
               "c":"💀",
               "e":"🐧",
               "r":"🐬",
               "q":"🦖",
               "w":"🐝",
               "t":"🐴",
               "y":"🦍",
               "u":"😊",
               "i":"😁",
               "o":"😅",
               "p":"🤩",
               "s":"😜",
               "d":"🤯",
               "f":"🐙",
               "g":"🐼",
               "h":"🐸",
               "j":"🐶",
               "k":"🐓",
               "l":"🐊",
               "z":"🌚",
               "x":"🤓",
               "v":"🥶",
               "n":"😱",
               "m":"🤔"
           ]
    
    
    
    // MARK: - 3️⃣ تحت هذا الخط secretNameEmoji قم بكتابة الداله
    func secretNameEmoji(membernamesarry : [String]) -> String {
        let firstletters = secretNameLetter(membernamearry: membernamesarry)
        var emoji: [String] = []
        for i in firstletters {
            emoji.append(emojiDictionary["\(i.lowercased())"] ?? "")
            
       
        }
        
        membersNamesArray.removeAll()
        return emoji.joined()
}
   
    // MARK: -   النهاية
    func encryptwith(emoji: Bool, array: [String]) -> String{
    if emoji{
        return  secretNameEmoji (membernamesarry: array)
    }
    else{
        return secretNameLetter (membernamearry: array)
    }
    

}
// bouns


    }

