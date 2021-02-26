

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
    //分數label
    @IBOutlet weak var fractionLabel: UILabel!
    //文章顯示
    @IBOutlet weak var articleText: UITextView!
    //導入自定義資料
    var topics = [Topics]()
    //題目數
    var index = 0
    //總分
    var sum = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 產出題目
        let topics1 = Topics(topicNumber: 1, topics: "做任何事提不起勁或沒有樂趣")
        topics.append(topics1)
        let topics2 = Topics(topicNumber: 2, topics: "感到心情低落、沮喪或絕望")
        topics.append(topics2)
        let topics3 = Topics(topicNumber: 3, topics: "入睡困難、睡不安穩或睡眠過多")
        topics.append(topics3)
        let topics4 = Topics(topicNumber: 4, topics: "感覺疲倦或沒有活力")
        topics.append(topics4)
        let topics5 = Topics(topicNumber: 5, topics: "食慾不振或吃太多")
        topics.append(topics5)
        let topics6 = Topics(topicNumber: 6, topics: "覺得自己很糟、覺得自己很失敗或覺得自己讓家人失望")
        topics.append(topics6)
        let topics7 = Topics(topicNumber: 7, topics: "對專注在事物上有困難，例如閱讀報紙或看電視時")
        topics.append(topics7)
        let topics8 = Topics(topicNumber: 8, topics: "動作或說話速度緩慢到別人已經察覺，或剛好相反：動來動去、躁動不安更甚於平常")
        topics.append(topics8)
        let topics9 = Topics(topicNumber: 9, topics: "有輕生或傷害自己的念頭")
        topics.append(topics9)
        changAlpha(number: 1, fraction: 0)
        //顯示題號
        numberLabel.text = "\(topics[index].topicNumber)"
        //顯示題目
        topicLabel.text = topics[index].topics
       
    }
    //分數計算
    func scoreCalculation(){
        switch sum {
        case 0...9:
            fractionLabel.text = "分數 \n\(sum)分 \n 在正常範圍內"
        case 10...14:
            fractionLabel.text = "分數 \n\(sum)分 \n 屬於輕度憂鬱症"
        case 15...19:
            fractionLabel.text = "分數 \n\(sum)分 \n 屬於中度憂鬱症"
        
        default:
            fractionLabel.text = "分數 \n\(sum)分 \n 屬於重度憂鬱症"
        }
    }
    //按鍵狀態
    func changAlpha(number:CGFloat,fraction:CGFloat){
        //答案按鍵隱藏
        for i in 0...3{
            answerButton[i].alpha = number
            answerView[i].alpha = number
        }
        //題目數
        topicNumberView.alpha = number
        topicLabel.alpha = number
        //題目
        topicVeiw.alpha = number
        topicLabel.alpha = number
        //結算畫面
        fractionLabel.alpha = fraction
        articleText.alpha = fraction
        articleText.text = "一般來說，較短暫的心情不適或低落，可以主動和朋友或師長聊聊，適當的人際交流可抒發壓力或減輕心理的負擔，也可透過熱愛的事物如運動、聽音樂等方式放鬆自己。\n但若是有下列情況發生，就應該逕行就醫：\n心理或生理的不舒服已經超過自身所能控制的範圍。心情持續低落，導致家庭、工作、學業的表現大受影響，時間超過兩個月。出現自殺的傾向或念頭。治療憂鬱症在生物學的最終目標是改善大腦調節情緒的能力，其基本的治療方法是藥物治療，如常見的抗憂鬱劑等等，主要作用為增加神經傳導物質的濃度，約50% -75%憂鬱症的病人對抗鬱劑有好的反應，服藥時間約3-4週才有明顯成效，通常需持續服用至少3-6個月。心理治療、電療也會和藥物治療並用，心理治療期望改善患者的自我認知的行為或提高病患在人際互動中的信任感，並增進病患忍受情緒變化的能力；電療的方式，是一種針對特別情況的非必要方法，如情況較為嚴重或藥物無法控制時，主要幫助神經傳導物質正常運作、穩定患者的情緒。\n尋求幫助以下為心理諮詢的電話、網路資源，也可以上網搜尋各地的衛生、醫療機構。電話：台北市撥打1999市民專線轉2521（直撥1980）生命線（直撥1995）衛生署安心專線（0800-788-995）24hr全國照顧者免付費關懷專線（0800-507272）\n內政部男性關懷專線（0800-013-999）\n華人心理治療基金會(以評估狀況為主)https://www.tip.org.tw/therapyonline\n張老師全球資訊網http://www.1980.org.tw/web3-20101110/main.php?customerid=3"
    }
    //按下答案button之後動作
    func chooseAnswer (){
        //
        if index < 8{
            //題號＋1
            index+=1
            //顯示題號
            numberLabel.text = "\(topics[index].topicNumber)"
            //顯示題目
            topicLabel.text = topics[index].topics
            }else if index == 8{
                changAlpha(number: 0, fraction: 1)
                scoreCalculation()//分數計算
               
            }
    }
    //完全沒有
    @IBAction func answer01(_ sender: UIButton) {
        sum+=1
        chooseAnswer ()
        
    }
    //幾乎每天
    @IBAction func answer02(_ sender: UIButton) {
        sum+=2
        chooseAnswer ()
        
    }
    //天數少於一天
    @IBAction func answer03(_ sender: UIButton) {
        sum+=3
        chooseAnswer ()
        
    }
    //天數大於一半
    @IBAction func answer04(_ sender: UIButton) {
        sum+=4
        chooseAnswer ()
        
    }
    
    
}

