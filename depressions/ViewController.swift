

import UIKit

class ViewController: UIViewController {

    //題目數
    @IBOutlet weak var numberLabel: UILabel!
    //題目數view
    @IBOutlet weak var topicNumberView: UIView!
    //題目label
    @IBOutlet weak var topicLabel: UILabel!
    //題目view
    @IBOutlet weak var topicVeiw: UIView!
    //答案button
    @IBOutlet var answerButton: [UIButton]!
    //答案view
    @IBOutlet var answerView: [UIView]!

    //導入自定義資料
    var topics = [Topics]()
    //題目數
    var index = 0
    //總分
    var totleNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 產出題目
        topics.append(Topics(topicNumber: 1, topics: "做任何事提不起勁或沒有樂趣"))
        topics.append(Topics(topicNumber: 2, topics: "感到心情低落、沮喪或絕望"))
        topics.append(Topics(topicNumber: 3, topics: "入睡困難、睡不安穩或睡眠過多"))
        topics.append(Topics(topicNumber: 4, topics: "感覺疲倦或沒有活力"))
        topics.append(Topics(topicNumber: 5, topics: "食慾不振或吃太多"))
        topics.append(Topics(topicNumber: 6, topics: "覺得自己很糟、覺得自己很失敗或覺得自己讓家人失望"))
        topics.append(Topics(topicNumber: 7, topics: "對專注在事物上有困難，例如閱讀報紙或看電視時"))
        topics.append((Topics(topicNumber: 8, topics: "動作或說話速度緩慢到別人已經察覺，或剛好相反：動來動去、躁動不安更甚於平常")))
        topics.append(Topics(topicNumber: 9, topics: "有輕生或傷害自己的念頭"))

//        changAlpha(number: 1, fraction: 0)
        //顯示題號
        numberLabel.text = "\(topics[index].topicNumber)"
        //顯示題目
        topicLabel.text = topics[index].topics
       
    }
    
    //按下答案button之後換下一題
    func chooseAnswer (){
        if index < 8{
            //題號＋1
            index+=1
            //顯示題號
            numberLabel.text = "\(topics[index].topicNumber)"
            //顯示題目
            topicLabel.text = topics[index].topics
            }else if index == 8{
                //跳到下一頁
                performSegue(withIdentifier: "show", sender: nil)
            }
    }
    //設定傳給第二頁的資料
    @IBSegueAction func fraction(_ coder: NSCoder, sender: Any?, segueIdentifier: String?) -> fractionViewController? {
        
        let fractionViewController = fractionViewController(coder: coder)
            fractionViewController?.sums = Sum(sum: totleNumber)
        return fractionViewController
        
        
    }
    
    
    //完全沒有
    @IBAction func answer01(_ sender: UIButton) {
        totleNumber+=1
        chooseAnswer ()
        
    }
    //幾乎每天
    @IBAction func answer02(_ sender: UIButton) {
        totleNumber+=2
        chooseAnswer ()
        
    }
    //天數少於一天
    @IBAction func answer03(_ sender: UIButton) {
        totleNumber+=3
        chooseAnswer ()
        
    }
    //天數大於一半
    @IBAction func answer04(_ sender: UIButton) {
        totleNumber+=4
        chooseAnswer ()
        
    }
    
    
}

