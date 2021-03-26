

import UIKit

class fractionViewController: UIViewController {

    //文章顯示
    @IBOutlet weak var articleText: UITextView!
    //顯示分數label
    @IBOutlet weak var fractionLabel: UILabel!
    var sums:Sum!
    
    func scoreCalculation(){
        switch sums.sum {
        case 0...9:
            fractionLabel.text = "分數 \n\(sums.sum)分 \n 在正常範圍內"
        case 10...14:
            fractionLabel.text = "分數 \n\(sums.sum)分 \n 屬於輕度憂鬱症"
        case 15...19:
            fractionLabel.text = "分數 \n\(sums.sum)分 \n 屬於中度憂鬱症"
        
        default:
            fractionLabel.text = "分數 \n\(sums.sum)分 \n 屬於重度憂鬱症"
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        scoreCalculation()
        articleText.text = "一般來說，較短暫的心情不適或低落，可以主動和朋友或師長聊聊，適當的人際交流可抒發壓力或減輕心理的負擔，也可透過熱愛的事物如運動、聽音樂等方式放鬆自己。\n但若是有下列情況發生，就應該逕行就醫：\n心理或生理的不舒服已經超過自身所能控制的範圍。心情持續低落，導致家庭、工作、學業的表現大受影響，時間超過兩個月。出現自殺的傾向或念頭。治療憂鬱症在生物學的最終目標是改善大腦調節情緒的能力，其基本的治療方法是藥物治療，如常見的抗憂鬱劑等等，主要作用為增加神經傳導物質的濃度，約50% -75%憂鬱症的病人對抗鬱劑有好的反應，服藥時間約3-4週才有明顯成效，通常需持續服用至少3-6個月。心理治療、電療也會和藥物治療並用，心理治療期望改善患者的自我認知的行為或提高病患在人際互動中的信任感，並增進病患忍受情緒變化的能力；電療的方式，是一種針對特別情況的非必要方法，如情況較為嚴重或藥物無法控制時，主要幫助神經傳導物質正常運作、穩定患者的情緒。\n尋求幫助以下為心理諮詢的電話、網路資源，也可以上網搜尋各地的衛生、醫療機構。電話：台北市撥打1999市民專線轉2521（直撥1980）生命線（直撥1995）衛生署安心專線（0800-788-995）24hr全國照顧者免付費關懷專線（0800-507272）\n內政部男性關懷專線（0800-013-999）\n華人心理治療基金會(以評估狀況為主)https://www.tip.org.tw/therapyonline\n張老師全球資訊網http://www.1980.org.tw/web3-20101110/main.php?customerid=3"
        
    }
    

   

}
