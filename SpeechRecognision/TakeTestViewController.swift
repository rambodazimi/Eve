//
//  TakeTestViewController.swift
//  SpeechRecognision
//
//  Created by Rambod Azimi on 5/3/22.
//

import UIKit

class TakeTestViewController: UIViewController {

    var currentPage = 0
    
    @IBOutlet var pageControl: UIPageControl!
    @IBOutlet var nextButton: UIButton!
    @IBOutlet var previousButton: UIButton!
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var notAtAllButton: UIButton!
    @IBOutlet var aLittleBitButton: UIButton!
    @IBOutlet var moderatelyButton: UIButton!
    @IBOutlet var quiteABitButton: UIButton!
    @IBOutlet var extremelyButton: UIButton!
    @IBOutlet weak var QLabel: UILabel!
    @IBOutlet weak var questionNumber: UILabel!
    @IBOutlet weak var of90Label: UILabel!
    var nextButtonColor: UIColor!
    @IBOutlet weak var finishButton: UIButton!
    var repeatedAnswers = [Int](repeating: 0, count: 90)    // when te index is zero, it meens it hasn't been added to the scores yet

    
    static var somScore: Int = 0
    static var ocdScore: Int = 0
    static var isScore: Int = 0
    static var depScore: Int = 0
    static var anxScore: Int = 0
    static var ahScore: Int = 0
    static var paScore: Int = 0
    static var parScore: Int = 0
    static var psyScore: Int = 0


    /*
    var somScore = 0 //Somatization
    var ocdScore = 0 //Obsessive-compulsive
    var isScore = 0 //Interpersonal sensibility
    var depScore = 0 //Depression
    var anxScore = 0 //Anxiety
    var ahScore = 0 //Anger-hostility
    var paScore = 0 //Phobic-anxiety
    var parScore = 0 //Paranoid ideation
    var psyScore = 0 //Psychoticism
    */
    
    override func viewDidLoad() {
        print(currentPage)
        super.viewDidLoad()
        updatePageControl()
        questionLabel.text = "Headaches"
        questionNumber.text = "1"
        nextButton.isEnabled = false
        finishButton.isHidden = true
    }
    
    @IBAction func nextPressed(){
        
        print(currentPage)
        if(currentPage < 90){
            currentPage += 1
            updatePageControl()
            notAtAllButton.tintColor = UIColor.systemBlue
            aLittleBitButton.tintColor = UIColor.systemBlue
            moderatelyButton.tintColor = UIColor.systemBlue
            quiteABitButton.tintColor = UIColor.systemBlue
            extremelyButton.tintColor = UIColor.systemBlue
        }
        setQuestions()
    }
    
    @IBAction func previousPressed(){
        questionNumber.isHidden = false
        of90Label.isHidden = false
        QLabel.isHidden = false
        notAtAllButton.isHidden = false
        aLittleBitButton.isHidden = false
        moderatelyButton.isHidden = false
        quiteABitButton.isHidden = false
        extremelyButton.isHidden = false
        finishButton.isHidden = true
        notAtAllButton.tintColor = UIColor.systemBlue
        aLittleBitButton.tintColor = UIColor.systemBlue
        moderatelyButton.tintColor = UIColor.systemBlue
        quiteABitButton.tintColor = UIColor.systemBlue
        extremelyButton.tintColor = UIColor.systemBlue

        print(currentPage)
        if(currentPage > 0){
            currentPage -= 1
            updatePageControl()
        }
        setQuestions()
    }
    
    func updatePageControl(){
        pageControl.currentPage = currentPage
    }
    
    
    func checkSelected() -> Bool {
        if(notAtAllButton.tintColor == UIColor.systemGreen || aLittleBitButton.tintColor == UIColor.systemGreen || moderatelyButton.tintColor == UIColor.systemGreen || quiteABitButton.tintColor == UIColor.systemGreen || extremelyButton.tintColor == UIColor.systemGreen){
            return true
        }else{
            return false
        }
    }
    
    
    func scoreQuestions(page: Int){
        
    }
        
    func setQuestions(){
        if(currentPage == 0){ //Q1 som
            questionLabel.text = "Headaches"
            questionNumber.text = "1"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        } else if (currentPage == 1){ //Q2 anx
            questionLabel.text = "Nervousness or shakiness inside"
            questionNumber.text = "2"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 2){ //Q3 ocd
            questionLabel.text = "Unwanted thoughts that won’t leave your mind"
            questionNumber.text = "3"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 3){ //Q4 som
            questionLabel.text = "Faintness or dizziness"
            questionNumber.text = "4"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 4){ //Q5 dep
            questionLabel.text = "Loss of sexual interest or pleasure"
            questionNumber.text = "5"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 5){ //Q6 is
            questionLabel.text = "Feeling critical of others"
            questionNumber.text = "6"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 6){ //Q7 psy
            questionLabel.text = "The idea of someone controlling your thoughts"
            questionNumber.text = "7"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 7){ //Q8 par
            questionLabel.text = "Feeling others are to blame for your troubles"
            questionNumber.text = "8"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 8){ //Q9 ocd
            questionLabel.text = "Trouble remembering things"
            questionNumber.text = "9"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 9){ //Q10 ocd
            questionLabel.text = "Worried about sloppiness or carelessness"
            questionNumber.text = "10"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 10){ //Q11 ah
            questionLabel.text = "Feeling easily annoyed or irritated"
            questionNumber.text = "11"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 11){ //Q12 som
            questionLabel.text = "Pains in heart or chest"
            questionNumber.text = "12"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 12){ //Q13 pa
            questionLabel.text = "Feeling afraid in open spaces or on the streets"
            questionNumber.text = "13"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 13){ //Q14 dep
            questionLabel.text = "Feeling low in energy or slowed down"
            questionNumber.text = "14"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 14){ //Q15 dep
            questionLabel.text = "Thoughts of ending your life"
            questionNumber.text = "15"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 15){ //Q16 psy
            questionLabel.text = "Hearing voices that other people do not hear"
            questionNumber.text = "16"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 16){ //Q17 anx
            questionLabel.text = "Trembling"
            questionNumber.text = "17"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 17){ //Q18 par
            questionLabel.text = "Feeling that most people cannot be trusted"
            questionNumber.text = "18"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 18){ //Q19 add
            questionLabel.text = "Poor appetite"
            questionNumber.text = "19"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 19){ //Q20 dep
            questionLabel.text = "Crying easily"
            questionNumber.text = "20"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 20){ //Q21 is
            questionLabel.text = "Feeling shy or uneasy with the opposite sex"
            questionNumber.text = "21"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 21){ //Q22 dep
            questionLabel.text = "Feeling of being trapped or caught"
            questionNumber.text = "22"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 22){ //Q23 anx
            questionLabel.text = "Suddenly scared for no reason"
            questionNumber.text = "23"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 23){ //Q24 ah
            questionLabel.text = "Temper outbursts that you could not control"
            questionNumber.text = "24"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 24){ //Q25 pa
            questionLabel.text = "Feeling afraid to go out of your house alone"
            questionNumber.text = "25"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 25){ //Q26 dep
            questionLabel.text = "Blaming yourself for things"
            questionNumber.text = "26"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 26){ //Q27 som
            questionLabel.text = "Pains in lower back"
            questionNumber.text = "27"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 27){ //Q28 ocd
            questionLabel.text = "Feeling blocked in getting things done"
            questionNumber.text = "28"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 28){ //Q29 dep
            questionLabel.text = "Feeling lonely"
            questionNumber.text = "29"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 29){ //Q30 dep
            questionLabel.text = "Feeling blue"
            questionNumber.text = "30"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 30){ //Q31 dep
            questionLabel.text = "Worrying too much about things"
            questionNumber.text = "31"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 31){ //Q32 dep
            questionLabel.text = "Feeling no interest in things"
            questionNumber.text = "32"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 32){ //Q33 anx
            questionLabel.text = "Feeling fearful"
            questionNumber.text = "33"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 33){ //Q34 is
            questionLabel.text = "Your feelings being easily hurt"
            questionNumber.text = "34"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 34){ //Q35 psy
            questionLabel.text = "Other people being aware of your private thoughts"
            questionNumber.text = "35"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 35){ //Q36 is
            questionLabel.text = "Feeling others don't understand you"
            questionNumber.text = "36"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 36){ //Q37 is
            questionLabel.text = "Feeling that people are unfriendly or dislike you"
            questionNumber.text = "37"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 37){ //Q38 ocd
            questionLabel.text = "Having to do things very slowly to insure"
            questionNumber.text = "38"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 38){ //Q39 anx
            questionLabel.text = "Heart pounding or racing"
            questionNumber.text = "39"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 39){ //Q40 som
            questionLabel.text = "Nausea or upset stomach"
            questionNumber.text = "40"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 40){ //Q41 is
            questionLabel.text = "Feeling inferior to others"
            questionNumber.text = "41"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 41){ //Q42 som
            questionLabel.text = "Soreness of your muscles"
            questionNumber.text = "42"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 42){ //Q43 par
            questionLabel.text = "Feeling that you are watched by others"
            questionNumber.text = "43"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 43){ //Q44 add
            questionLabel.text = "Trouble falling asleep"
            questionNumber.text = "44"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 44){ //Q45 ocd
            questionLabel.text = "Having to check and double-check what you do"
            questionNumber.text = "45"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 45){ //Q46 ocd
            questionLabel.text = "Difficulty making decisions"
            questionNumber.text = "46"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 46){ //Q47 pa
            questionLabel.text = "Feeling afraid to travel on buses, subways, trains"
            questionNumber.text = "47"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 47){ //Q48 som
            questionLabel.text = "Trouble getting your breath"
            questionNumber.text = "48"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 48){ //Q49 som
            questionLabel.text = "Hot or cold spells"
            questionNumber.text = "49"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 49){ //Q50 pa
            questionLabel.text = "Having to avoid certain things because of fear"
            questionNumber.text = "50"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 50){ //Q51 ocd
            questionLabel.text = "Your mind going blank"
            questionNumber.text = "51"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 51){ //Q52 som
            questionLabel.text = "Numbness or tingling in parts of your body"
            questionNumber.text = "52"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 52){ //Q53 som
            questionLabel.text = "A lump in your throat"
            questionNumber.text = "53"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 53){ //Q54 dep
            questionLabel.text = "Feeling hopeless about the future"
            questionNumber.text = "54"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 54){ //Q55 ocd
            questionLabel.text = "Trouble concentrating"
            questionNumber.text = "55"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 55){ //Q56 som
            questionLabel.text = "Feeling weak in parts of your body"
            questionNumber.text = "56"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 56){ //Q57 anx
            questionLabel.text = "Feeling tense or keyed up"
            questionNumber.text = "57"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 57){ //Q58 som
            questionLabel.text = "Heavy feelings in your arms or legs"
            questionNumber.text = "58"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 58){ //Q59 add
            questionLabel.text = "Thoughts of death or dying"
            questionNumber.text = "59"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 59){ //Q60 add
            questionLabel.text = "Overeating"
            questionNumber.text = "60"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 60){ //Q61 is
            questionLabel.text = "Feeling uneasy when people are talking about you"
            questionNumber.text = "61"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 61){ //Q62 psy
            questionLabel.text = "Having thoughts that are not your own"
            questionNumber.text = "62"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 62){ //Q63 ah
            questionLabel.text = "Having urges to beat, injure, or harm someone"
            questionNumber.text = "63"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 63){ //Q64 add
            questionLabel.text = "Awakening in the early morning"
            questionNumber.text = "64"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 64){ //Q65 ocd
            questionLabel.text = "Having to repeat the same actions"
            questionNumber.text = "65"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 65){ //Q66 add
            questionLabel.text = "Sleep that is restless or disturbed"
            questionNumber.text = "66"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 66){ //Q67 ah
            questionLabel.text = "Having urges to break or smash things"
            questionNumber.text = "67"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 67){ //Q68 par
            questionLabel.text = "Having ideas or beliefs that others do not share"
            questionNumber.text = "68"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 68){ //Q69 is
            questionLabel.text = "Feeling very self-conscious with others"
            questionNumber.text = "69"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 69){ //Q70 pa
            questionLabel.text = "Feeling uneasy in crowds, such as shopping"
            questionNumber.text = "70"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 70){ //Q71 dep
            questionLabel.text = "Feeling everything is an effort"
            questionNumber.text = "71"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 71){ //Q72 anx
            questionLabel.text = "Spells of terror or panic"
            questionNumber.text = "72"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 72){ //Q73 is
            questionLabel.text = "Feeling uncomfortable about eating in public"
            questionNumber.text = "73"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 73){ //Q74 ah
            questionLabel.text = "Getting into frequent arguments"
            questionNumber.text = "74"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 74){ //Q75 pa
            questionLabel.text = "Feeling nervous when you are left alone"
            questionNumber.text = "75"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 75){ //Q76 par
            questionLabel.text = "Others not giving you proper credit"
            questionNumber.text = "76"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 76){ //Q77 psy
            questionLabel.text = "Feeling lonely even when you are with people"
            questionNumber.text = "77"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 77){ //Q78 anx
            questionLabel.text = "Feeling so restless you couldn’t sit still"
            questionNumber.text = "78"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 78){ //Q79 dep
            questionLabel.text = "Feelings of worthlessness"
            questionNumber.text = "79"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 79){ //Q80 anx
            questionLabel.text = "Feeling that familiar things are strange or unreal"
            questionNumber.text = "80"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 80){ //Q81 ah
            questionLabel.text = "Shouting or throwing things"
            questionNumber.text = "81"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 81){ //Q82 pa
            questionLabel.text = "Feeling afraid you will faint in public"
            questionNumber.text = "82"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 82){ //Q83 par
            questionLabel.text = "Feeling that people take advantage of you if you let"
            questionNumber.text = "83"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 83){ //Q84 psy
            questionLabel.text = "Having thoughts about sex that bother you a lot"
            questionNumber.text = "84"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 84){ //Q85 psy
            questionLabel.text = "The idea that you should be punished for your sins"
            questionNumber.text = "85"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 85){ //Q86 anx
            questionLabel.text = "Feeling pushed to get things done"
            questionNumber.text = "86"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 86){ //Q87 psy
            questionLabel.text = "The idea that something is wrong with your body"
            questionNumber.text = "87"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 87){ //Q88 psy
            questionLabel.text = "Never feeling close to another person"
            questionNumber.text = "88"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 88){ //Q89 add
            questionLabel.text = "Feelings of guilt"
            questionNumber.text = "89"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else if(currentPage == 89){ //Q90 psy
            questionLabel.text = "The idea that something is wrong with your mind"
            questionNumber.text = "90"
            if(!checkSelected()){
                nextButton.isEnabled = false
            }
        }else{
            questionLabel.text = ""
            notAtAllButton.isHidden = true
            aLittleBitButton.isHidden = true
            moderatelyButton.isHidden = true
            quiteABitButton.isHidden = true
            extremelyButton.isHidden = true
            QLabel.isHidden = true
            questionNumber.isHidden = true
            of90Label.isHidden = true
            nextButton.isEnabled = false
            finishButton.isHidden = false
        }
    }
    
    @IBAction func notAtAllButtonPressed(_ sender: UIButton) {  // score = 0
        nextButton.isEnabled = true
        notAtAllButton.tintColor = UIColor.systemGreen
        aLittleBitButton.tintColor = UIColor.systemBlue
        moderatelyButton.tintColor = UIColor.systemBlue
        quiteABitButton.tintColor = UIColor.systemBlue
        extremelyButton.tintColor = UIColor.systemBlue
    }
    
    @IBAction func aLittleBitButtonPressed(_ sender: UIButton) {  // score = 1
        nextButton.isEnabled = true
        aLittleBitButton.tintColor = UIColor.systemGreen
        notAtAllButton.tintColor = UIColor.systemBlue
        moderatelyButton.tintColor = UIColor.systemBlue
        quiteABitButton.tintColor = UIColor.systemBlue
        extremelyButton.tintColor = UIColor.systemBlue
        
        if(repeatedAnswers[currentPage] == 0){ // if the user has not submitted any score in this page
            switch currentPage{
            case 0:
                TakeTestViewController.somScore += 1
            case 1:
                TakeTestViewController.anxScore += 1
            case 2:
                TakeTestViewController.ocdScore += 1
            case 3:
                TakeTestViewController.somScore += 1
            case 4:
                TakeTestViewController.depScore += 1
            case 5:
                TakeTestViewController.isScore += 1
            case 6:
                TakeTestViewController.psyScore += 1
            case 7:
                TakeTestViewController.parScore += 1
            case 8:
                TakeTestViewController.ocdScore += 1
            case 9:
                TakeTestViewController.ocdScore += 1
            case 10:
                TakeTestViewController.ahScore += 1
            case 11:
                TakeTestViewController.somScore += 1
            case 12:
                TakeTestViewController.paScore += 1
            case 13:
                TakeTestViewController.depScore += 1
            case 14:
                TakeTestViewController.depScore += 1
            case 15:
                TakeTestViewController.psyScore += 1
            case 16:
                TakeTestViewController.anxScore += 1
            case 17:
                TakeTestViewController.parScore += 1
            case 18:
                // additional items
                break
            case 19:
                TakeTestViewController.depScore += 1
            case 20:
                TakeTestViewController.isScore += 1
            case 21:
                TakeTestViewController.depScore += 1
            case 22:
                TakeTestViewController.anxScore += 1
            case 23:
                TakeTestViewController.ahScore += 1
            case 24:
                TakeTestViewController.paScore += 1
            case 25:
                TakeTestViewController.depScore += 1
            case 26:
                TakeTestViewController.somScore += 1
            case 27:
                TakeTestViewController.ocdScore += 1
            case 28:
                TakeTestViewController.depScore += 1
            case 29:
                TakeTestViewController.depScore += 1
            case 30:
                TakeTestViewController.depScore += 1
            case 31:
                TakeTestViewController.depScore += 1
            case 32:
                TakeTestViewController.anxScore += 1
            case 33:
                TakeTestViewController.isScore += 1
            case 34:
                TakeTestViewController.psyScore += 1
            case 35:
                TakeTestViewController.isScore += 1
            case 36:
                TakeTestViewController.isScore += 1
            case 37:
                TakeTestViewController.ocdScore += 1
            case 38:
                TakeTestViewController.anxScore += 1
            case 39:
                TakeTestViewController.somScore += 1
            case 40:
                TakeTestViewController.isScore += 1
            case 41:
                TakeTestViewController.somScore += 1
            case 42:
                TakeTestViewController.parScore += 1
            case 43:
                // additioal items
                break
            case 44:
                TakeTestViewController.ocdScore += 1
            case 45:
                TakeTestViewController.ocdScore += 1
            case 46:
                TakeTestViewController.paScore += 1
            case 47:
                TakeTestViewController.somScore += 1
            case 48:
                TakeTestViewController.somScore += 1
            case 49:
                TakeTestViewController.paScore += 1
            case 50:
                TakeTestViewController.ocdScore += 1
            case 51:
                TakeTestViewController.somScore += 1
            case 52:
                TakeTestViewController.somScore += 1
            case 53:
                TakeTestViewController.depScore += 1
            case 54:
                TakeTestViewController.ocdScore += 1
            case 55:
                TakeTestViewController.somScore += 1
            case 56:
                TakeTestViewController.anxScore += 1
            case 57:
                TakeTestViewController.somScore += 1
            case 58:
                // additional items
                break
            case 59:
                // additional items
                break
            case 60:
                TakeTestViewController.isScore += 1
            case 61:
                TakeTestViewController.psyScore += 1
            case 62:
                TakeTestViewController.ahScore += 1
            case 63:
                // additional items
                break
            case 64:
                TakeTestViewController.ocdScore += 1
            case 65:
                // additional items
                break
            case 66:
                TakeTestViewController.ahScore += 1
            case 67:
                TakeTestViewController.parScore += 1
            case 68:
                TakeTestViewController.isScore += 1
            case 69:
                TakeTestViewController.paScore += 1
            case 70:
                TakeTestViewController.depScore += 1
            case 71:
                TakeTestViewController.anxScore += 1
            case 72:
                TakeTestViewController.isScore += 1
            case 73:
                TakeTestViewController.ahScore += 1
            case 74:
                TakeTestViewController.paScore += 1
            case 75:
                TakeTestViewController.parScore += 1
            case 76:
                TakeTestViewController.psyScore += 1
            case 77:
                TakeTestViewController.anxScore += 1
            case 78:
                TakeTestViewController.depScore += 1
            case 79:
                TakeTestViewController.anxScore += 1
            case 80:
                TakeTestViewController.ahScore += 1
            case 81:
                TakeTestViewController.paScore += 1
            case 82:
                TakeTestViewController.parScore += 1
            case 83:
                TakeTestViewController.psyScore += 1
            case 84:
                TakeTestViewController.psyScore += 1
            case 85:
                TakeTestViewController.anxScore += 1
            case 86:
                TakeTestViewController.psyScore += 1
            case 87:
                TakeTestViewController.psyScore += 1
            case 88:
                // additional items
                break
            case 89:
                TakeTestViewController.psyScore += 1
            default:
                break
            }
        }
        repeatedAnswers[currentPage] = 1
    }
    
    @IBAction func moderatelyButtonPressed(_ sender: UIButton) {  // score = 2
        nextButton.isEnabled = true
        moderatelyButton.tintColor = UIColor.systemGreen
        notAtAllButton.tintColor = UIColor.systemBlue
        aLittleBitButton.tintColor = UIColor.systemBlue
        quiteABitButton.tintColor = UIColor.systemBlue
        extremelyButton.tintColor = UIColor.systemBlue
        if(repeatedAnswers[currentPage] == 0){ // if the user has not submitted any score in this page
            switch currentPage{
            case 0:
                TakeTestViewController.somScore += 2
            case 1:
                TakeTestViewController.anxScore += 2
            case 2:
                TakeTestViewController.ocdScore += 2
            case 3:
                TakeTestViewController.somScore += 2
            case 4:
                TakeTestViewController.depScore += 2
            case 5:
                TakeTestViewController.isScore += 2
            case 6:
                TakeTestViewController.psyScore += 2
            case 7:
                TakeTestViewController.parScore += 2
            case 8:
                TakeTestViewController.ocdScore += 2
            case 9:
                TakeTestViewController.ocdScore += 2
            case 10:
                TakeTestViewController.ahScore += 2
            case 11:
                TakeTestViewController.somScore += 2
            case 12:
                TakeTestViewController.paScore += 2
            case 13:
                TakeTestViewController.depScore += 2
            case 14:
                TakeTestViewController.depScore += 2
            case 15:
                TakeTestViewController.psyScore += 2
            case 16:
                TakeTestViewController.anxScore += 2
            case 17:
                TakeTestViewController.parScore += 2
            case 18:
                // additional items
                break
            case 19:
                TakeTestViewController.depScore += 2
            case 20:
                TakeTestViewController.isScore += 2
            case 21:
                TakeTestViewController.depScore += 2
            case 22:
                TakeTestViewController.anxScore += 2
            case 23:
                TakeTestViewController.ahScore += 2
            case 24:
                TakeTestViewController.paScore += 2
            case 25:
                TakeTestViewController.depScore += 2
            case 26:
                TakeTestViewController.somScore += 2
            case 27:
                TakeTestViewController.ocdScore += 2
            case 28:
                TakeTestViewController.depScore += 2
            case 29:
                TakeTestViewController.depScore += 2
            case 30:
                TakeTestViewController.depScore += 2
            case 31:
                TakeTestViewController.depScore += 2
            case 32:
                TakeTestViewController.anxScore += 2
            case 33:
                TakeTestViewController.isScore += 2
            case 34:
                TakeTestViewController.psyScore += 2
            case 35:
                TakeTestViewController.isScore += 2
            case 36:
                TakeTestViewController.isScore += 2
            case 37:
                TakeTestViewController.ocdScore += 2
            case 38:
                TakeTestViewController.anxScore += 2
            case 39:
                TakeTestViewController.somScore += 2
            case 40:
                TakeTestViewController.isScore += 2
            case 41:
                TakeTestViewController.somScore += 2
            case 42:
                TakeTestViewController.parScore += 2
            case 43:
                // additioal items
                break
            case 44:
                TakeTestViewController.ocdScore += 2
            case 45:
                TakeTestViewController.ocdScore += 2
            case 46:
                TakeTestViewController.paScore += 2
            case 47:
                TakeTestViewController.somScore += 2
            case 48:
                TakeTestViewController.somScore += 2
            case 49:
                TakeTestViewController.paScore += 2
            case 50:
                TakeTestViewController.ocdScore += 2
            case 51:
                TakeTestViewController.somScore += 2
            case 52:
                TakeTestViewController.somScore += 2
            case 53:
                TakeTestViewController.depScore += 2
            case 54:
                TakeTestViewController.ocdScore += 2
            case 55:
                TakeTestViewController.somScore += 2
            case 56:
                TakeTestViewController.anxScore += 2
            case 57:
                TakeTestViewController.somScore += 2
            case 58:
                // additional items
                break
            case 59:
                // additional items
                break
            case 60:
                TakeTestViewController.isScore += 2
            case 61:
                TakeTestViewController.psyScore += 2
            case 62:
                TakeTestViewController.ahScore += 2
            case 63:
                // additional items
                break
            case 64:
                TakeTestViewController.ocdScore += 2
            case 65:
                // additional items
                break
            case 66:
                TakeTestViewController.ahScore += 2
            case 67:
                TakeTestViewController.parScore += 2
            case 68:
                TakeTestViewController.isScore += 2
            case 69:
                TakeTestViewController.paScore += 2
            case 70:
                TakeTestViewController.depScore += 2
            case 71:
                TakeTestViewController.anxScore += 2
            case 72:
                TakeTestViewController.isScore += 2
            case 73:
                TakeTestViewController.ahScore += 2
            case 74:
                TakeTestViewController.paScore += 2
            case 75:
                TakeTestViewController.parScore += 2
            case 76:
                TakeTestViewController.psyScore += 2
            case 77:
                TakeTestViewController.anxScore += 2
            case 78:
                TakeTestViewController.depScore += 2
            case 79:
                TakeTestViewController.anxScore += 2
            case 80:
                TakeTestViewController.ahScore += 2
            case 81:
                TakeTestViewController.paScore += 2
            case 82:
                TakeTestViewController.parScore += 2
            case 83:
                TakeTestViewController.psyScore += 2
            case 84:
                TakeTestViewController.psyScore += 2
            case 85:
                TakeTestViewController.anxScore += 2
            case 86:
                TakeTestViewController.psyScore += 2
            case 87:
                TakeTestViewController.psyScore += 2
            case 88:
                // additional items
                break
            case 89:
                TakeTestViewController.psyScore += 2
            default:
                break
            }
        }
        repeatedAnswers[currentPage] = 1
    }
    
    @IBAction func quiteABitButtonPressed(_ sender: UIButton) {  // score = 3
        nextButton.isEnabled = true
        quiteABitButton.tintColor = UIColor.systemGreen
        notAtAllButton.tintColor = UIColor.systemBlue
        aLittleBitButton.tintColor = UIColor.systemBlue
        moderatelyButton.tintColor = UIColor.systemBlue
        extremelyButton.tintColor = UIColor.systemBlue
        if(repeatedAnswers[currentPage] == 0){ // if the user has not submitted any score in this page
            switch currentPage{
            case 0:
                TakeTestViewController.somScore += 3
            case 1:
                TakeTestViewController.anxScore += 3
            case 2:
                TakeTestViewController.ocdScore += 3
            case 3:
                TakeTestViewController.somScore += 3
            case 4:
                TakeTestViewController.depScore += 3
            case 5:
                TakeTestViewController.isScore += 3
            case 6:
                TakeTestViewController.psyScore += 3
            case 7:
                TakeTestViewController.parScore += 3
            case 8:
                TakeTestViewController.ocdScore += 3
            case 9:
                TakeTestViewController.ocdScore += 3
            case 10:
                TakeTestViewController.ahScore += 3
            case 11:
                TakeTestViewController.somScore += 3
            case 12:
                TakeTestViewController.paScore += 3
            case 13:
                TakeTestViewController.depScore += 3
            case 14:
                TakeTestViewController.depScore += 3
            case 15:
                TakeTestViewController.psyScore += 3
            case 16:
                TakeTestViewController.anxScore += 3
            case 17:
                TakeTestViewController.parScore += 3
            case 18:
                // additional items
                break
            case 19:
                TakeTestViewController.depScore += 3
            case 20:
                TakeTestViewController.isScore += 3
            case 21:
                TakeTestViewController.depScore += 3
            case 22:
                TakeTestViewController.anxScore += 3
            case 23:
                TakeTestViewController.ahScore += 3
            case 24:
                TakeTestViewController.paScore += 3
            case 25:
                TakeTestViewController.depScore += 3
            case 26:
                TakeTestViewController.somScore += 3
            case 27:
                TakeTestViewController.ocdScore += 3
            case 28:
                TakeTestViewController.depScore += 3
            case 29:
                TakeTestViewController.depScore += 3
            case 30:
                TakeTestViewController.depScore += 3
            case 31:
                TakeTestViewController.depScore += 3
            case 32:
                TakeTestViewController.anxScore += 3
            case 33:
                TakeTestViewController.isScore += 3
            case 34:
                TakeTestViewController.psyScore += 3
            case 35:
                TakeTestViewController.isScore += 3
            case 36:
                TakeTestViewController.isScore += 3
            case 37:
                TakeTestViewController.ocdScore += 3
            case 38:
                TakeTestViewController.anxScore += 3
            case 39:
                TakeTestViewController.somScore += 3
            case 40:
                TakeTestViewController.isScore += 3
            case 41:
                TakeTestViewController.somScore += 3
            case 42:
                TakeTestViewController.parScore += 3
            case 43:
                // additioal items
                break
            case 44:
                TakeTestViewController.ocdScore += 3
            case 45:
                TakeTestViewController.ocdScore += 3
            case 46:
                TakeTestViewController.paScore += 3
            case 47:
                TakeTestViewController.somScore += 3
            case 48:
                TakeTestViewController.somScore += 3
            case 49:
                TakeTestViewController.paScore += 3
            case 50:
                TakeTestViewController.ocdScore += 3
            case 51:
                TakeTestViewController.somScore += 3
            case 52:
                TakeTestViewController.somScore += 3
            case 53:
                TakeTestViewController.depScore += 3
            case 54:
                TakeTestViewController.ocdScore += 3
            case 55:
                TakeTestViewController.somScore += 3
            case 56:
                TakeTestViewController.anxScore += 3
            case 57:
                TakeTestViewController.somScore += 3
            case 58:
                // additional items
                break
            case 59:
                // additional items
                break
            case 60:
                TakeTestViewController.isScore += 3
            case 61:
                TakeTestViewController.psyScore += 3
            case 62:
                TakeTestViewController.ahScore += 3
            case 63:
                // additional items
                break
            case 64:
                TakeTestViewController.ocdScore += 3
            case 65:
                // additional items
                break
            case 66:
                TakeTestViewController.ahScore += 3
            case 67:
                TakeTestViewController.parScore += 3
            case 68:
                TakeTestViewController.isScore += 3
            case 69:
                TakeTestViewController.paScore += 3
            case 70:
                TakeTestViewController.depScore += 3
            case 71:
                TakeTestViewController.anxScore += 3
            case 72:
                TakeTestViewController.isScore += 3
            case 73:
                TakeTestViewController.ahScore += 3
            case 74:
                TakeTestViewController.paScore += 3
            case 75:
                TakeTestViewController.parScore += 3
            case 76:
                TakeTestViewController.psyScore += 3
            case 77:
                TakeTestViewController.anxScore += 3
            case 78:
                TakeTestViewController.depScore += 3
            case 79:
                TakeTestViewController.anxScore += 3
            case 80:
                TakeTestViewController.ahScore += 3
            case 81:
                TakeTestViewController.paScore += 3
            case 82:
                TakeTestViewController.parScore += 3
            case 83:
                TakeTestViewController.psyScore += 3
            case 84:
                TakeTestViewController.psyScore += 3
            case 85:
                TakeTestViewController.anxScore += 3
            case 86:
                TakeTestViewController.psyScore += 3
            case 87:
                TakeTestViewController.psyScore += 3
            case 88:
                // additional items
                break
            case 89:
                TakeTestViewController.psyScore += 3
            default:
                break
            }
        }
        repeatedAnswers[currentPage] = 1
    }
    
    @IBAction func extremelyButtonPressed(_ sender: UIButton) {  // score = 4
        nextButton.isEnabled = true
        extremelyButton.tintColor = UIColor.systemGreen
        notAtAllButton.tintColor = UIColor.systemBlue
        aLittleBitButton.tintColor = UIColor.systemBlue
        moderatelyButton.tintColor = UIColor.systemBlue
        quiteABitButton.tintColor = UIColor.systemBlue
        if(repeatedAnswers[currentPage] == 0){ // if the user has not submitted any score in this page
            switch currentPage{
            case 0:
                TakeTestViewController.somScore += 4
            case 1:
                TakeTestViewController.anxScore += 4
            case 2:
                TakeTestViewController.ocdScore += 4
            case 3:
                TakeTestViewController.somScore += 4
            case 4:
                TakeTestViewController.depScore += 4
            case 5:
                TakeTestViewController.isScore += 4
            case 6:
                TakeTestViewController.psyScore += 4
            case 7:
                TakeTestViewController.parScore += 4
            case 8:
                TakeTestViewController.ocdScore += 4
            case 9:
                TakeTestViewController.ocdScore += 4
            case 10:
                TakeTestViewController.ahScore += 4
            case 11:
                TakeTestViewController.somScore += 4
            case 12:
                TakeTestViewController.paScore += 4
            case 13:
                TakeTestViewController.depScore += 4
            case 14:
                TakeTestViewController.depScore += 4
            case 15:
                TakeTestViewController.psyScore += 4
            case 16:
                TakeTestViewController.anxScore += 4
            case 17:
                TakeTestViewController.parScore += 4
            case 18:
                // additional items
                break
            case 19:
                TakeTestViewController.depScore += 4
            case 20:
                TakeTestViewController.isScore += 4
            case 21:
                TakeTestViewController.depScore += 4
            case 22:
                TakeTestViewController.anxScore += 4
            case 23:
                TakeTestViewController.ahScore += 4
            case 24:
                TakeTestViewController.paScore += 4
            case 25:
                TakeTestViewController.depScore += 4
            case 26:
                TakeTestViewController.somScore += 4
            case 27:
                TakeTestViewController.ocdScore += 4
            case 28:
                TakeTestViewController.depScore += 4
            case 29:
                TakeTestViewController.depScore += 4
            case 30:
                TakeTestViewController.depScore += 4
            case 31:
                TakeTestViewController.depScore += 4
            case 32:
                TakeTestViewController.anxScore += 4
            case 33:
                TakeTestViewController.isScore += 4
            case 34:
                TakeTestViewController.psyScore += 4
            case 35:
                TakeTestViewController.isScore += 4
            case 36:
                TakeTestViewController.isScore += 4
            case 37:
                TakeTestViewController.ocdScore += 4
            case 38:
                TakeTestViewController.anxScore += 4
            case 39:
                TakeTestViewController.somScore += 4
            case 40:
                TakeTestViewController.isScore += 4
            case 41:
                TakeTestViewController.somScore += 4
            case 42:
                TakeTestViewController.parScore += 4
            case 43:
                // additioal items
                break
            case 44:
                TakeTestViewController.ocdScore += 4
            case 45:
                TakeTestViewController.ocdScore += 4
            case 46:
                TakeTestViewController.paScore += 4
            case 47:
                TakeTestViewController.somScore += 4
            case 48:
                TakeTestViewController.somScore += 4
            case 49:
                TakeTestViewController.paScore += 4
            case 50:
                TakeTestViewController.ocdScore += 4
            case 51:
                TakeTestViewController.somScore += 4
            case 52:
                TakeTestViewController.somScore += 4
            case 53:
                TakeTestViewController.depScore += 4
            case 54:
                TakeTestViewController.ocdScore += 4
            case 55:
                TakeTestViewController.somScore += 4
            case 56:
                TakeTestViewController.anxScore += 4
            case 57:
                TakeTestViewController.somScore += 4
            case 58:
                // additional items
                break
            case 59:
                // additional items
                break
            case 60:
                TakeTestViewController.isScore += 4
            case 61:
                TakeTestViewController.psyScore += 4
            case 62:
                TakeTestViewController.ahScore += 4
            case 63:
                // additional items
                break
            case 64:
                TakeTestViewController.ocdScore += 4
            case 65:
                // additional items
                break
            case 66:
                TakeTestViewController.ahScore += 4
            case 67:
                TakeTestViewController.parScore += 4
            case 68:
                TakeTestViewController.isScore += 4
            case 69:
                TakeTestViewController.paScore += 4
            case 70:
                TakeTestViewController.depScore += 4
            case 71:
                TakeTestViewController.anxScore += 4
            case 72:
                TakeTestViewController.isScore += 4
            case 73:
                TakeTestViewController.ahScore += 4
            case 74:
                TakeTestViewController.paScore += 4
            case 75:
                TakeTestViewController.parScore += 4
            case 76:
                TakeTestViewController.psyScore += 4
            case 77:
                TakeTestViewController.anxScore += 4
            case 78:
                TakeTestViewController.depScore += 4
            case 79:
                TakeTestViewController.anxScore += 4
            case 80:
                TakeTestViewController.ahScore += 4
            case 81:
                TakeTestViewController.paScore += 4
            case 82:
                TakeTestViewController.parScore += 4
            case 83:
                TakeTestViewController.psyScore += 4
            case 84:
                TakeTestViewController.psyScore += 4
            case 85:
                TakeTestViewController.anxScore += 4
            case 86:
                TakeTestViewController.psyScore += 4
            case 87:
                TakeTestViewController.psyScore += 4
            case 88:
                // additional items
                break
            case 89:
                TakeTestViewController.psyScore += 4
            default:
                break
            }
        }
        repeatedAnswers[currentPage] = 1
    }
}
