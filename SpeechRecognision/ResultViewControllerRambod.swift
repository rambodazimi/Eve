import UIKit
import Charts
import SwiftUI

class ResultViewControllerRambod: UIViewController {

    
    @IBOutlet weak var myScrollView: UIScrollView!

    @IBOutlet var myView: UIView!
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var thirdView: UIView!
    
    
    
    //sign labels
    @IBOutlet weak var somSign: UILabel!
    @IBOutlet weak var ocdSign: UILabel!
    @IBOutlet weak var isSign: UILabel!
    @IBOutlet weak var depSign: UILabel!
    @IBOutlet weak var anxSign: UILabel!
    @IBOutlet weak var hosSign: UILabel!
    @IBOutlet weak var paSign: UILabel!
    @IBOutlet weak var parSign: UILabel!
    @IBOutlet weak var psySign: UILabel!
    //end of sign labels
    
    
    //advice labels
    @IBOutlet weak var somAdvice: UILabel!
    @IBOutlet weak var ocdAdvice: UILabel!
    @IBOutlet weak var isAdvice: UILabel!
    @IBOutlet weak var depAdvice: UILabel!
    @IBOutlet weak var anxAdvice: UILabel!
    @IBOutlet weak var hosAdvice: UILabel!
    @IBOutlet weak var paAdvice: UILabel!
    @IBOutlet weak var parAdvice: UILabel!
    @IBOutlet weak var psyAdvice: UILabel!
    //end of advice labels
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myScrollView)
        createChart()
        displayResults()
        TakeTestViewController.somScore = 0
        TakeTestViewController.psyScore = 0
        TakeTestViewController.parScore = 0
        TakeTestViewController.paScore = 0
        TakeTestViewController.ahScore = 0
        TakeTestViewController.anxScore = 0
        TakeTestViewController.depScore = 0
        TakeTestViewController.isScore = 0
        TakeTestViewController.ocdScore = 0
    }
    
    func displayResults(){
        
        //som
        if(TakeTestViewController.somScore >= 0 && TakeTestViewController.somScore <= 3){   // no sign
            somSign.text = "No Sign"
            somSign.textColor = UIColor.systemGreen
            somAdvice.text = "No sign has been detected!"
        }else if (TakeTestViewController.somScore >= 4 && TakeTestViewController.somScore <= 12){ // A little bit
            somSign.text = "A Little Bit"
            somSign.textColor = UIColor.systemYellow
            somAdvice.text = "The results of the test show a little indication of somatic symptom disorder in you. Although it’s not that much for your case, trying to do the following can help you get rid of this disorder:\nWork with your care providers\nPractice stress management and relaxation techniques\nGet physically active\nParticipate in activities\nAvoid alcohol and recreational drugs\nIt’s also a good idea to go and see a doctor and talk about your problem."
        }else if (TakeTestViewController.somScore >= 13 && TakeTestViewController.somScore <= 35){ // Moderately
            somSign.text = "Moderately"
            somSign.textColor = UIColor.systemOrange
            somAdvice.text = "The results of the test show a moderate indication of somatic symptom disorder in you. You should visit a doctor. The doctor can give you the best treatment (such as CBT, …) to help you overcome this disorder. Meanwhile, doing the following can also help you tackle this problem:\nWork with your care providers\nPractice stress management and relaxation techniques\nGet physically active\nParticipate in activities\nAvoid alcohol and recreational drugs."
        }else if (TakeTestViewController.somScore >= 36 && TakeTestViewController.somScore <= 48){ // Extremely
            somSign.text = "Extremely"
            somSign.textColor = UIColor.systemRed
            somAdvice.text = "The results of the test show an extreme indication of somatic symptom disorder in you. You must visit a doctor as soon as possible. In case of any emergency, please call 911 immediately. Psychotherapy — specifically, cognitive behavioral therapy (CBT) — can help improve physical symptoms. Antidepressant medication can help reduce symptoms associated with depression and pain that often occur with somatic symptom disorder. In addition, you can do the following to help diagnose somatic symptom disorder easier and faster:\nWork with your care providers\nPractice stress management and relaxation techniques\nGet physically active\nParticipate in activities\nAvoid alcohol and recreational drugs."
        }else{
            somSign.text = "Error!"
        }
        //end of som
        
        
        
        //ocd
        if(TakeTestViewController.ocdScore >= 0 && TakeTestViewController.ocdScore <= 3){   // no sign
            ocdSign.text = "No Sign"
            ocdSign.textColor = UIColor.systemGreen
            ocdAdvice.text = "No sign has been detected!"
        }else if (TakeTestViewController.ocdScore >= 4 && TakeTestViewController.ocdScore <= 15){ // A little bit
            ocdSign.text = "A Little Bit"
            ocdSign.textColor = UIColor.systemYellow
            ocdAdvice.text = "The results of the test show a little indication of obsessive compulsive disorder in you. Although it’s not that much for your case, trying to do the following can help you get rid of this disorder:\nAlways expect the unexpected\nBe willing to accept risk\nNever seek reassurance from yourself or others\nAlways try hard to agree with all obsessive thoughts — never analyze, question, …\nDon't waste time trying to prevent or not think your thoughts\nIt’s also a good idea to go and see a doctor and talk about your problem. A short course of therapy is usually recommended for relatively mild OCD."
        }else if (TakeTestViewController.ocdScore >= 16 && TakeTestViewController.ocdScore <= 30){ // Moderately
            ocdSign.text = "Moderately"
            ocdSign.textColor = UIColor.systemOrange
            ocdAdvice.text = "The results of the test show a moderate indication of obsessive compulsive disorder in you. You should go and visit a doctor. The doctor can give you the best treatment (such as CBT, …) to help you overcome obsessive compulsive disorder. A short course of therapy is usually recommended for relatively mild OCD. Meanwhile, doing the following can also help you tackle this problem:\nAlways expect the unexpected\nBe willing to accept risk\nNever seek reassurance from yourself or others\nAlways try hard to agree with all obsessive thoughts — never analyze, question, …\nDon't waste time trying to prevent or not think your thoughts."
        }else if (TakeTestViewController.ocdScore >= 31 && TakeTestViewController.ocdScore <= 40){ // Extremely
            ocdSign.text = "Extremely"
            ocdSign.textColor = UIColor.systemRed
            ocdAdvice.text = "The results of the test show an extreme indication of obsessive compulsive disorder in you. You must visit a doctor as soon as possible. In case of any emergency, please call 911 immediately. The 2 main treatments are: psychological therapy and medicine. You may need a longer course of therapy and/or medicine. In addition, you can do the following to help diagnose OCD easier:\nAlways expect the unexpected\nBe willing to accept risk\nNever seek reassurance from yourself or others\nAlways try hard to agree with all obsessive thoughts — never analyze, question, …\nDon't waste time trying to prevent or not think your thoughts."
        }else{
            ocdSign.text = "Error!"
        }
        //end of ocd
        
        
        
        
        //is
        if(TakeTestViewController.isScore >= 0 && TakeTestViewController.isScore <= 2){   // no sign
            isSign.text = "No Sign"
            isSign.textColor = UIColor.systemGreen
            isAdvice.text = "No sign has been detected!"
        }else if (TakeTestViewController.isScore >= 3 && TakeTestViewController.isScore <= 9){ // A little bit
            isSign.text = "A Little Bit"
            isSign.textColor = UIColor.systemYellow
            isAdvice.text = "The results of the test show a little indication of interpersonal sensitivity disorder in you. Although it’s not that much for your case, trying to do the following can help you get rid of this disorder:\nTeach yourself to be positive by reminding yourself of the good things about your life.\nPractice active listening\nGain a well-rounded view of things by putting yourself in other people’s shoes. This will help you develop empathy for others.\nMaintain your relationships\nIt’s also a good idea to go and see a doctor and talk about your problem."
        }else if (TakeTestViewController.isScore >= 10 && TakeTestViewController.isScore <= 26){ // Moderately
            isSign.text = "Moderately"
            isSign.textColor = UIColor.systemOrange
            isAdvice.text = "The results of the test show a moderate indication of interpersonal sensitivity disorder in you. You should go and visit a doctor. The doctor can give you the best treatment (such as CBT, Medication, …) to help you overcome interpersonal sensitivity disorder. Numerous research studies suggest that CBT leads to significant improvement in functioning and quality of life. Meanwhile, doing the following can also help you tackle this problem:\nTeach yourself to be positive by reminding yourself of the good things about your life.\nPractice active listening\nGain a well-rounded view of things by putting yourself in other people’s shoes. This will help you develop empathy for others.\nMaintain your relationships."
        }else if (TakeTestViewController.isScore >= 27 && TakeTestViewController.isScore <= 36){ // Extremely
            isSign.text = "Extremely"
            isSign.textColor = UIColor.systemRed
            isAdvice.text = "The results of the test show an extreme indication of interpersonal sensitivity disorder in you. You must visit a doctor as soon as possible. In case of any emergency, please call 911 immediately. Numerous research studies suggest that CBT leads to significant improvement in functioning and quality of life. In addition, you can do the following to help diagnose this problem faster:\nTeach yourself to be positive by reminding yourself of the good things about your life.\nPractice active listening\nGain a well-rounded view of things by putting yourself in other people’s shoes. This will help you develop empathy for others.\nMaintain your relationships."
        }else{
            isSign.text = "Error!"
        }
        //end of is
        
        
        
        //dep
        if(TakeTestViewController.depScore >= 0 && TakeTestViewController.depScore <= 3){   // no sign
            depSign.text = "No Sign"
            depSign.textColor = UIColor.systemGreen
            depAdvice.text = "No sign has been detected!"
        }else if (TakeTestViewController.depScore >= 4 && TakeTestViewController.depScore <= 13){ // A little bit
            depSign.text = "A Little Bit"
            depSign.textColor = UIColor.systemYellow
            depAdvice.text = "The results of the test show a little indication of depression in you. Although it’s not that much for your case, trying to do the following can help you get rid of this disorder:\nMeaning: Find small ways to be of service to others.\nYour goals: Find workable goals that give you a sense of accomplishment.\nPleasant Events: Schedule pleasant activities or events.\nSleep Regularly: Try to keep a regular sleep schedule.\nExercise: And, eat right too.\nIt’s also a good idea to go and see a doctor and talk about your problem."
        }else if (TakeTestViewController.depScore >= 14 && TakeTestViewController.depScore <= 40){ // Moderately
            depSign.text = "Moderately"
            depSign.textColor = UIColor.systemOrange
            depAdvice.text = "The results of the test show a moderate indication of depression in you. You should go and visit a doctor. The doctor can give you the best treatment to help you overcome depression. Make an appointment to see your doctor. If you're reluctant to seek treatment, talk to a friend or loved one, or someone else you trust. Meanwhile, doing the following can also help you tackle this problem:\nMeaning: Find small ways to be of service to others.\nYour goals: Find workable goals that give you a sense of accomplishment.\nPleasant Events: Schedule pleasant activities or events.\nSleep Regularly: Try to keep a regular sleep schedule.\nExercise: And, eat right too."
        }else if (TakeTestViewController.depScore >= 41 && TakeTestViewController.depScore <= 52){ // Extremely
            depSign.text = "Extremely"
            depSign.textColor = UIColor.systemRed
            depAdvice.text = "The results of the test show an extreme indication of depression in you. You must visit a doctor as soon as possible. In case of any emergency, please call 911 immediately. Major depression is a serious but treatable illness. Depending on the severity of symptoms, your doctor may recommend treatment with an antidepressant medication. They may also suggest psychotherapy, or talk therapy. In addition, you can do the following to help diagnose depression easier:\nMeaning: Find small ways to be of service to others.\nYour goals: Find workable goals that give you a sense of accomplishment.\nPleasant Events: Schedule pleasant activities or events.\nSleep Regularly: Try to keep a regular sleep schedule.\nExercise: And, eat right too."
        }else{
            depSign.text = "Error!"
        }
        //end of dep
        
        
        
        //anx
        if(TakeTestViewController.anxScore >= 0 && TakeTestViewController.anxScore <= 2){   // no sign
            anxSign.text = "No Sign"
            anxSign.textColor = UIColor.systemGreen
            anxAdvice.text = "No sign has been detected!"
        }else if (TakeTestViewController.anxScore >= 3 && TakeTestViewController.anxScore <= 10){ // A little bit
            anxSign.text = "A Little Bit"
            anxSign.textColor = UIColor.systemYellow
            anxAdvice.text = "The results of the test show a little indication of anxiety in you. Although it’s not that much for your case, trying to do the following can help you get rid of this disorder:\nTake a time-out. Practice yoga, listen to music, meditate, learn relaxation techniques.\nEat well-balanced meals. Do not skip any meals.\nGet enough sleep. When stressed, your body needs additional sleep and rest.\nExercise daily to help you feel good and maintain your health.\nMake an effort to replace negative thoughts with positive ones.\nIt’s also a good idea to go and see a doctor and talk about your problem."
        }else if (TakeTestViewController.anxScore >= 11 && TakeTestViewController.anxScore <= 29){ // Moderately
            anxSign.text = "Moderately"
            anxSign.textColor = UIColor.systemOrange
            anxAdvice.text = "The results of the test show a moderate indication of anxiety in you. You should go and visit a doctor. The doctor can give you the best treatment (such as Medication) to help you overcome anxiety. Make an appointment to see your doctor. If you're reluctant to seek treatment, talk to a friend or loved one, or someone else you trust. Meanwhile, doing the following can also help you tackle this problem:\nTake a time-out. Practice yoga, listen to music, meditate, learn relaxation techniques.\nEat well-balanced meals. Do not skip any meals.\nGet enough sleep. When stressed, your body needs additional sleep and rest.\nExercise daily to help you feel good and maintain your health.\nMake an effort to replace negative thoughts with positive ones."
        }else if (TakeTestViewController.anxScore >= 30 && TakeTestViewController.anxScore <= 40){ // Extremely
            anxSign.text = "Extremely"
            anxSign.textColor = UIColor.systemRed
            anxAdvice.text = "The results of the test show an extreme indication of anxiety in you. You must visit a doctor as soon as possible. In case of any emergency, please call 911 immediately. The two main treatments for generalized anxiety disorder are psychotherapy and medications. In addition, you can do the following to help diagnose anxiety easier and faster:\nTake a time-out. Practice yoga, listen to music, meditate, learn relaxation techniques.\nEat well-balanced meals. Do not skip any meals.\nGet enough sleep. When stressed, your body needs additional sleep and rest.\nExercise daily to help you feel good and maintain your health.\nMake an effort to replace negative thoughts with positive ones."
        }else{
            anxSign.text = "Error!"
        }
        //end of anx
        
        
        
        //hos
        if(TakeTestViewController.ahScore >= 0 && TakeTestViewController.ahScore <= 1){   // no sign
            hosSign.text = "No Sign"
            hosSign.textColor = UIColor.systemGreen
            hosAdvice.text = "No sign has been detected!"
        }else if (TakeTestViewController.ahScore >= 2 && TakeTestViewController.ahScore <= 6){ // A little bit
            hosSign.text = "A Little Bit"
            hosSign.textColor = UIColor.systemYellow
            hosAdvice.text = "The results of the test show a little indication of hostility disorder in you. Although it’s not that much for your case, trying to do the following can help you get rid of this disorder:\nThink before you speak\nOnce you're calm, express your concerns\nGet some exercise\nTake a timeout\nUse humor to release tension\nIt’s also a good idea to go and see a doctor and talk about your problem."
        }else if (TakeTestViewController.ahScore >= 7 && TakeTestViewController.ahScore <= 17){ // Moderately
            hosSign.text = "Moderately"
            hosSign.textColor = UIColor.systemOrange
            hosAdvice.text = "The results of the test show a moderate indication of hostility disorder in you. It’s important to talk to your healthcare provider. The doctor can give you the best treatment (such as Medication) to help you overcome anger disorder. Meanwhile, doing the following can also help you tackle this problem:\nThink before you speak\nOnce you're calm, express your concerns\nGet some exercise\nTake a timeout\nUse humor to release tension."
        }else if (TakeTestViewController.ahScore >= 18 && TakeTestViewController.ahScore <= 24){ // Extremely
            hosSign.text = "Extremely"
            hosSign.textColor = UIColor.systemRed
            hosAdvice.text = "The results of the test show an extreme indication of hostility disorder in you. You must visit a doctor as soon as possible. In case of any emergency, please call 911 immediately. Treatment generally includes talk therapy (psychotherapy) and medication. In addition, you can do the following to help diagnose hostility easier and faster:\nThink before you speak\nOnce you're calm, express your concerns\nGet some exercise\nTake a timeout\nUse humor to release tension."
        }else{
            hosSign.text = "Error!"
        }
        //end of hos
        
        
        
        //pa
        if(TakeTestViewController.paScore >= 0 && TakeTestViewController.paScore <= 2){   // no sign
            paSign.text = "No Sign"
            paSign.textColor = UIColor.systemGreen
            paAdvice.text = "No sign has been detected!"
        }else if (TakeTestViewController.paScore >= 3 && TakeTestViewController.paScore <= 7){ // A little bit
            paSign.text = "A Little Bit"
            paSign.textColor = UIColor.systemYellow
            paAdvice.text = "The results of the test show a little indication of phobic anxiety disorder in you. Although it’s not that much for your case, trying to do the following can help you get rid of this disorder:\nAllow yourself to sit with your fear for 2-3 minutes at a time\nWrite down the things you are grateful for\nRemind yourself that your anxiety is a storehouse of wisdom\nExercise\nUse humor to deflate your worst fears\nIt’s also good to consider getting psychological help."
        }else if (TakeTestViewController.paScore >= 8 && TakeTestViewController.paScore <= 20){ // Moderately
            paSign.text = "Moderately"
            paSign.textColor = UIColor.systemOrange
            paAdvice.text = "The results of the test show a moderate indication of phobic anxiety disorder in you. It’s important to talk to your healthcare provider, especially if you have children. Repeatedly seeing someone else's phobic reaction can trigger a specific phobia in children. The doctor can give you the best treatment (such as exposure therapy) to help you overcome phobic anxiety disorder. Meanwhile, doing the following can also help you tackle this problem:\nAllow yourself to sit with your fear for 2-3 minutes at a time\nWrite down the things you are grateful for\nRemind yourself that your anxiety is a storehouse of wisdom\nExercise\nUse humor to deflate your worst fears."
        }else if (TakeTestViewController.paScore >= 21 && TakeTestViewController.paScore <= 28){ // Extremely
            paSign.text = "Extremely"
            paSign.textColor = UIColor.systemRed
            paAdvice.text = "The results of the test show an extreme indication of phobic anxiety disorder in you. You must visit a doctor as soon as possible. In case of any emergency, please call 911 immediately. The best treatment for specific phobias is a form of psychotherapy called exposure therapy. In addition, you can do the following to help diagnose phobic anxiety easier and faster:\nAllow yourself to sit with your fear for 2-3 minutes at a time\nWrite down the things you are grateful for\nRemind yourself that your anxiety is a storehouse of wisdom\nExercise\nUse humor to deflate your worst fears."
        }else{
            paSign.text = "Error!"
        }
        //end of pa
        
        
        
        //par
        if(TakeTestViewController.parScore >= 0 && TakeTestViewController.parScore <= 1){   // no sign
            parSign.text = "No Sign"
            parSign.textColor = UIColor.systemGreen
            parAdvice.text = "No sign has been detected!"
        }else if (TakeTestViewController.parScore >= 2 && TakeTestViewController.parScore <= 6){ // A little bit
            parSign.text = "A Little Bit"
            parSign.textColor = UIColor.systemYellow
            parAdvice.text = "The results of the test show a little indication of paranoid ideation in you. Although it’s not that much for your case, I recommend visiting a doctor and talking about your problem, since approximately 75% of people with paranoid disorder have another personality disorder. Your treatment plan will likely involve a combination of medications and psychotherapy."
        }else if (TakeTestViewController.parScore >= 7 && TakeTestViewController.parScore <= 19){ // Moderately
            parSign.text = "Moderately"
            parSign.textColor = UIColor.systemOrange
            parAdvice.text = "The results of the test show a moderate indication of paranoid ideation in you. It’s important to talk to your healthcare provider as soon as you can. The doctor can give you the best treatment to help you overcome paranoid ideation. Approximately 75% of people with paranoid disorder have another personality disorder. Your treatment plan will likely involve a combination of medications and psychotherapy."
        }else if (TakeTestViewController.parScore >= 20 && TakeTestViewController.parScore <= 24){ // Extremely
            parSign.text = "Extremely"
            parSign.textColor = UIColor.systemRed
            parAdvice.text = "The results of the test show an extreme indication of paranoid ideation in you. You must visit a doctor as soon as possible. In case of any emergency, please call 911 immediately. Your treatment will likely involve a combination of medications and psychotherapy. Most of the time, you simply don’t know when your thoughts have become paranoid. Friends, loved ones, or medical professionals often have to point it out and try to help you get treatment."
        }else{
            parSign.text = "Error!"
        }
        //end of par
        
        
        
        //psy
        if(TakeTestViewController.psyScore >= 0 && TakeTestViewController.psyScore <= 2){   // no sign
            psySign.text = "No Sign"
            psySign.textColor = UIColor.systemGreen
            psyAdvice.text = "No sign has been detected!"
        }else if (TakeTestViewController.psyScore >= 3 && TakeTestViewController.psyScore <= 10){ // A little bit
            psySign.text = "A Little Bit"
            psySign.textColor = UIColor.systemYellow
            psyAdvice.text = "The results of the test show a little indication of psychosis in you. Although it’s not that much for your case, I recommend visiting a doctor and talking about your problem. Treatment for psychosis involves a combination of antipsychotic medicines, psychological therapies, and social support. Your treatment is likely to involve a team of mental health professionals working together."
        }else if (TakeTestViewController.psyScore >= 11 && TakeTestViewController.psyScore <= 30){ // Moderately
            psySign.text = "Moderately"
            psySign.textColor = UIColor.systemOrange
            psyAdvice.text = "The results of the test show a moderate indication of psychosis in you. It’s important to talk to your healthcare provider as soon as you can. The doctor can give you the best treatment to help you overcome psychosis. Treatment for psychosis involves a combination of antipsychotic medicines, psychological therapies, and social support. Your treatment is likely to involve a team of mental health professionals working together."
        }else if (TakeTestViewController.psyScore >= 31 && TakeTestViewController.psyScore <= 40){ // Extremely
            psySign.text = "Extremely"
            psySign.textColor = UIColor.systemRed
            psyAdvice.text = "The results of the test show an extreme indication of psychosis in you. You must visit a doctor as soon as possible. In case of any emergency, please call 911 immediately. Treatment for psychosis involves a combination of antipsychotic medicines, psychological therapies, and social support. Psychological treatment can help reduce the intensity and anxiety caused by psychosis. There are several possible psychological treatments. Your treatment is likely to involve a team of mental health professionals working together."
        }else{
            psySign.text = "Error!"
        }
        //end of psy
    }
    

    private func createChart(){
        let barChart = BarChartView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.width))
        let xAxis = barChart.xAxis
        let rightAxis = barChart.rightAxis
        let legend = barChart.legend
        var entries = [BarChartDataEntry]()
        let months: [String]! = ["SOM", "O-C", "INS", "DEP", "ANX", "HOS", "PHO", "PAR", "PSY"]
                
        xAxis.valueFormatter = IndexAxisValueFormatter(values: months)
        xAxis.setLabelCount(9, force: true)
        xAxis.axisMinimum = 0
        xAxis.axisMaximum = 8

        var somScore: Double = Double(TakeTestViewController.somScore) / 12.0
        somScore *= 25
        var ocdScore: Double = Double(TakeTestViewController.ocdScore) / 10.0
        ocdScore *= 25
        var isScore: Double = Double(TakeTestViewController.isScore) / 9.0
        isScore *= 25
        var depScore: Double = Double(TakeTestViewController.depScore) / 13.0
        depScore *= 25
        var anxScore: Double = Double(TakeTestViewController.anxScore) / 10.0
        anxScore *= 25
        var ahScore: Double = Double(TakeTestViewController.ahScore) / 6.0
        ahScore *= 25
        var paScore: Double = Double(TakeTestViewController.paScore) / 7.0
        paScore *= 25
        var parScore: Double = Double(TakeTestViewController.parScore) / 6.0
        parScore *= 25
        var psyScore: Double = Double(TakeTestViewController.psyScore) / 10.0
        psyScore *= 25
        
        entries.append(BarChartDataEntry(x: 0.0, y: somScore))
        entries.append(BarChartDataEntry(x: 1.0, y: ocdScore))
        entries.append(BarChartDataEntry(x: 2.0, y: isScore))
        entries.append(BarChartDataEntry(x: 3.0, y: depScore))
        entries.append(BarChartDataEntry(x: 4.0, y: anxScore))
        entries.append(BarChartDataEntry(x: 5.0, y: ahScore))
        entries.append(BarChartDataEntry(x: 6.0, y: paScore))
        entries.append(BarChartDataEntry(x: 7.0, y: parScore))
        entries.append(BarChartDataEntry(x: 8.0, y: psyScore))

        let set = BarChartDataSet(entries: entries, label: "Results based on SCL-90(in %)")
        set.colors = ChartColorTemplates.joyful()
        let data = BarChartData(dataSet: set)
        barChart.data = data
                           
        firstView.addSubview(barChart)
        barChart.center = view.center
    }

}
