//
//  GreenViewController.swift
//  SpeechRecognision
//
//  Created by Rambod Azimi on 4/27/22.
//

import UIKit
import AVFoundation
import InstantSearchVoiceOverlay


class GreenViewController: UIViewController {

    let voiceOverlayController = VoiceOverlayController()

    
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    @IBOutlet var label3: UILabel!
    @IBOutlet var label4: UILabel!
    @IBOutlet var label6: UILabel!
    @IBOutlet var label7: UILabel!

    @IBOutlet var myButton: UIButton!
    @IBOutlet var testButton: UIButton!

    
    
    var pinkViewController: PinkViewController?
    override func viewDidLoad() {
        testButton.isHidden = true
        //label1.text = "Hello \(PinkViewController.name!)!"
        super.viewDidLoad()

    }
    
    @IBAction func testButtonPressed(){
        testButton.isHidden = true
    }
    

    @IBAction func tappedButton(){
        label1.isHidden = true
        label2.isHidden = true
        label3.isHidden = true
        label4.isHidden = true
        label6.isHidden = true
        label7.isHidden = true
        myButton.isHidden = true
        
 

        voiceOverlayController.start(on: self, textHandler: { text, final, _ in
            if(final){
                print("Text: \(text)")

                if(text.contains("Hello") || text.contains("Hi") || text.contains("Hey") || text.contains("Yo") || text.contains("Howdy")){
                    self.label4.text = "Hello \(PinkViewController.name!)! It's nice talking to you!"
                    let a = AVSpeechUtterance(string: "Hello \(PinkViewController.name!)! It's nice talking to you!")
                    a.voice = AVSpeechSynthesisVoice(language: "en-US")
                    a.rate = 0.5
                    let s = AVSpeechSynthesizer()
                    s.speak(a)

                }else if(text.contains("Depressed") || text.contains("Depress") || text.contains("Depression") || text.contains("depressed") || text.contains("Anxiety") || text.contains("Anxious") || text.contains("Disorder") || text.contains("Angry") || text.contains("Anger") || text.contains("Paranoid") || text.contains("Psychoticism") || text.contains("I'm not feeling") || text.contains("I am not feeling") || text.contains("I feel")) || text.contains("I don't feel") || text.contains("I do not feel") || text.contains("take test") || text.contains("assess") || text.contains("take the test") || text.contains("Take test") || text.contains("Take the test"){
                    self.testButton.isHidden = false
                    self.label4.text = "\(PinkViewController.name!)! I'm sorry that you are not feeling okay. I'll ask you some questions to assess your mental health to give you advice. Please click the below button to start taking the test!"
                    let a = AVSpeechUtterance(string: "\(PinkViewController.name!)! I'm sorry that you are not feeling okay. I'll ask you some questions to assess your mental health to give you advice. Please click the below button to start taking the test!")
                    a.voice = AVSpeechSynthesisVoice(language: "en-US")
                    a.rate = 0.5
                    let s = AVSpeechSynthesizer()
                    s.speak(a)
                }else if(text.contains("How are you") || text.contains("How are you") || text.contains("Are you okay") || text.contains("Are you ok") || text.contains("Are you alright") || text.contains("You alright")){
                    self.label4.text = "I am pretty good! I hope you are doing well \(PinkViewController.name!)!"
                    let a = AVSpeechUtterance(string: "I am pretty good! I hope you are doing well \(PinkViewController.name!)!")
                    a.voice = AVSpeechSynthesisVoice(language: "en-US")
                    a.rate = 0.5
                    let s = AVSpeechSynthesizer()
                    s.speak(a)
                }else if(text.contains("Who are you") || text.contains("Who you are")){
                    self.label4.text = "I am Eve! Your mental health assistant! I am here to help you overcome your mental health problems."
                    let a = AVSpeechUtterance(string: "I am Eve! Your mental health assistant! I am here to help you overcome your mental health problems.")
                    a.voice = AVSpeechSynthesisVoice(language: "en-US")
                    a.rate = 0.5
                    let s = AVSpeechSynthesizer()
                    s.speak(a)
                }else if(text.contains("What date is")){
                    let today = Date()
                    let formatter1 = DateFormatter()
                    formatter1.dateStyle = .short
                    let datee: String = formatter1.string(from: today)
                    self.label4.text = "It is currently \(datee)."
                    let a = AVSpeechUtterance(string: "It is currently \(datee).")
                    a.voice = AVSpeechSynthesisVoice(language: "en-US")
                    a.rate = 0.5
                    let s = AVSpeechSynthesizer()
                    s.speak(a)
                }else if(text.contains("What time is it")){
                    let today = Date()
                    let formatter2 = DateFormatter()
                    formatter2.timeStyle = .medium
                    let timee: String = formatter2.string(from: today)
                    self.label4.text = "It is currently \(timee)."
                    let a = AVSpeechUtterance(string: "It is currently \(timee).")
                    a.voice = AVSpeechSynthesisVoice(language: "en-US")
                    a.rate = 0.5
                    let s = AVSpeechSynthesizer()
                    s.speak(a)
                }else if(text.contains("How is it going") || text.contains("How's it going") || text.contains("What's up") || text.contains("What is up") || text.contains("What is new") || text.contains("What's new") || text.contains("What is going on") || text.contains("What's going on")){
                    self.label4.text = "Nothing much far! But thanks for asking!"
                    let a = AVSpeechUtterance(string: "Nothing much far! But thanks for asking!")
                    a.voice = AVSpeechSynthesisVoice(language: "en-US")
                    a.rate = 0.5
                    let s = AVSpeechSynthesizer()
                    s.speak(a)
                }else if(text.contains("How old are you")){
                    self.label4.text = "Don't you mean how young am I?"
                    let a = AVSpeechUtterance(string: "Don't you mean how young am I?")
                    a.voice = AVSpeechSynthesisVoice(language: "en-US")
                    a.rate = 0.5
                    let s = AVSpeechSynthesizer()
                    s.speak(a)
                }else if(text.contains("How is everything") || text.contains("How's everything") || text.contains("How are thing") || text.contains("How're thing") || text.contains("How's your day") || text.contains("How is your day")){
                    self.label4.text = "Everything is good! Thanks for asking!"
                    let a = AVSpeechUtterance(string: "Everything is good! Thanks for asking!")
                    a.voice = AVSpeechSynthesisVoice(language: "en-US")
                    a.rate = 0.5
                    let s = AVSpeechSynthesizer()
                    s.speak(a)
                }else if(text.contains("How is life") || text.contains("How's life")){
                    self.label4.text = "Life is pretty good I believe. You should believe the same too!"
                    let a = AVSpeechUtterance(string: "Life is pretty good I believe. You should believe the same too!")
                    a.voice = AVSpeechSynthesisVoice(language: "en-US")
                    a.rate = 0.5
                    let s = AVSpeechSynthesizer()
                    s.speak(a)
                }else if(text.contains("Good to see you") || text.contains("Nice to see you") || text.contains("Nice to meet you") || text.contains("Good to meet you")){
                    self.label4.text = "Ow that's really sweet of you! Nice too meet you too \(PinkViewController.name!)!"
                    let a = AVSpeechUtterance(string: "Ow that's really sweet of you! Nice too meet you too \(PinkViewController.name!)!")
                    a.voice = AVSpeechSynthesisVoice(language: "en-US")
                    a.rate = 0.5
                    let s = AVSpeechSynthesizer()
                    s.speak(a)
                }else if(text.contains("Long time no") || text.contains("It's been a while") || text.contains("It has been a while")){
                    self.label4.text = "Yes \(PinkViewController.name!)! It's been too long!"
                    let a = AVSpeechUtterance(string: "Yes \(PinkViewController.name!)! It's been too long!")
                    a.voice = AVSpeechSynthesisVoice(language: "en-US")
                    a.rate = 0.5
                    let s = AVSpeechSynthesizer()
                    s.speak(a)
                }else if(text.contains("Good morning")){
                    self.label4.text = "Good morning \(PinkViewController.name!)!"
                    let a = AVSpeechUtterance(string: "Good morning \(PinkViewController.name!)!")
                    a.voice = AVSpeechSynthesisVoice(language: "en-US")
                    a.rate = 0.5
                    let s = AVSpeechSynthesizer()
                    s.speak(a)
                }else if(text.contains("Good afternoon")){
                    self.label4.text = "Good afternoon \(PinkViewController.name!)!"
                    let a = AVSpeechUtterance(string: "Good afternoon \(PinkViewController.name!)!")
                    a.voice = AVSpeechSynthesisVoice(language: "en-US")
                    a.rate = 0.5
                    let s = AVSpeechSynthesizer()
                    s.speak(a)
                }else if(text.contains("Good night")){
                    self.label4.text = "Good night \(PinkViewController.name!)!"
                    let a = AVSpeechUtterance(string: "Good night \(PinkViewController.name!)!")
                    a.voice = AVSpeechSynthesisVoice(language: "en-US")
                    a.rate = 0.5
                    let s = AVSpeechSynthesizer()
                    s.speak(a)
                }else if(text.contains("How do you do")){
                    self.label4.text = "I'm doing well!"
                    let a = AVSpeechUtterance(string: "I'm doing well!")
                    a.voice = AVSpeechSynthesisVoice(language: "en-US")
                    a.rate = 0.5
                    let s = AVSpeechSynthesizer()
                    s.speak(a)
                }else if((text.contains("What is") || text.contains("What's")) && (text.contains("somatization") || text.contains("somatic"))){
                    self.label4.text = "It is a form of mental illness that causes bodily symptoms, including pain. The distress people with SSD experience from pain are real."
                    let a = AVSpeechUtterance(string: "It is a form of mental illness that causes bodily symptoms, including pain. The distress people with SSD experience from pain are real.")
                    a.voice = AVSpeechSynthesisVoice(language: "en-US")
                    a.rate = 0.5
                    let s = AVSpeechSynthesizer()
                    s.speak(a)
                }else if(text.contains("symptoms") && (text.contains("somatization") || text.contains("omatic"))){
                    self.label4.text = "The symptoms of somatization disorder are Pain, Neurologic problems, Gastrointestinal complaints, and Sexual symptoms."
                    let a = AVSpeechUtterance(string: "The symptoms of somatization disorder are Pain, Neurologic problems, Gastrointestinal complaints, and Sexual symptoms.")
                    a.voice = AVSpeechSynthesisVoice(language: "en-US")
                    a.rate = 0.5
                    let s = AVSpeechSynthesizer()
                    s.speak(a)
                }else if(text.contains("symptom") && (text.contains("somatization") || text.contains("somatic"))){
                    self.label4.text = "The symptoms of somatization disorder are Pain, Neurologic problems, Gastrointestinal complaints, and Sexual symptoms."
                    let a = AVSpeechUtterance(string: "The symptoms of somatization disorder are Pain, Neurologic problems, Gastrointestinal complaints, and Sexual symptoms.")
                    a.voice = AVSpeechSynthesisVoice(language: "en-US")
                    a.rate = 0.5
                    let s = AVSpeechSynthesizer()
                    s.speak(a)
                }else if((text.contains("What is") || text.contains("What's")) && (text.contains("OCD") || text.contains("obsessive compulsive") ||  text.contains("obsession"))){
                    self.label4.text = "OCD features a pattern of unwanted thoughts and fears that lead you to do repetitive behaviors."
                    let a = AVSpeechUtterance(string: "OCD features a pattern of unwanted thoughts and fears that lead you to do repetitive behaviors.")
                    a.voice = AVSpeechSynthesisVoice(language: "en-US")
                    a.rate = 0.5
                    let s = AVSpeechSynthesizer()
                    s.speak(a)
                }else if(text.contains("symptoms") && (text.contains("OCD") || text.contains("obsession") || text.contains("obsessive compulsive"))){
                    self.label4.text = "The symptoms of OCD are Fear of dirt, having difficulty tolerating uncertainty, unwanted thoughts and so on."
                    let a = AVSpeechUtterance(string: "The symptoms of OCD are Fear of dirt, having difficulty tolerating uncertainty, unwanted thoughts and so on.")
                    a.voice = AVSpeechSynthesisVoice(language: "en-US")
                    a.rate = 0.5
                    let s = AVSpeechSynthesizer()
                    s.speak(a)
                }else if(text.contains("symptom") && (text.contains("OCD") || text.contains("obsession") || text.contains("obsessive compulsive"))){
                    self.label4.text = "The symptoms of OCD are Fear of dirt, having difficulty tolerating uncertainty, unwanted thoughts and so on."
                    let a = AVSpeechUtterance(string: "The symptoms of OCD are Fear of dirt, having difficulty tolerating uncertainty, unwanted thoughts and so on.")
                    a.voice = AVSpeechSynthesisVoice(language: "en-US")
                    a.rate = 0.5
                    let s = AVSpeechSynthesizer()
                    s.speak(a)
                }else if((text.contains("What is") || text.contains("What's")) && text.contains("interpersonal sensitivity")){
                    self.label4.text = "It is is characterized by a sense of  misinterpretation of others' interpersonal behavior and results in discomfort."
                    let a = AVSpeechUtterance(string: "It is is characterized by a sense of  misinterpretation of others' interpersonal behavior and results in discomfort.")
                    a.voice = AVSpeechSynthesisVoice(language: "en-US")
                    a.rate = 0.5
                    let s = AVSpeechSynthesizer()
                    s.speak(a)
                }else if(text.contains("symptoms") && text.contains("interpersonal sensitivity")){
                    self.label4.text = "The symptoms are feeling critical of others, feeling others don't understand you, feeling shy with the opposite sex, and so on."
                    let a = AVSpeechUtterance(string: "The symptoms are feeling critical of others, feeling others don't understand you, feeling shy with the opposite sex, and so on.")
                    a.voice = AVSpeechSynthesisVoice(language: "en-US")
                    a.rate = 0.5
                    let s = AVSpeechSynthesizer()
                    s.speak(a)
                }else if(text.contains("symptom") && text.contains("interpersonal sensitivity")){
                    self.label4.text = "The symptoms are feeling critical of others, feeling others don't understand you, feeling shy with the opposite sex, and so on."
                    let a = AVSpeechUtterance(string: "The symptoms are feeling critical of others, feeling others don't understand you, feeling shy with the opposite sex, and so on.")
                    a.voice = AVSpeechSynthesisVoice(language: "en-US")
                    a.rate = 0.5
                    let s = AVSpeechSynthesizer()
                    s.speak(a)
                }else if((text.contains("What is") || text.contains("What's")) && (text.contains("depression") || text.contains("depressed"))){
                    self.label4.text = "Depression is a mood disorder that causes a persistent feeling of sadness and loss of interest."
                    let a = AVSpeechUtterance(string: "Depression is a mood disorder that causes a persistent feeling of sadness and loss of interest.")
                    a.voice = AVSpeechSynthesisVoice(language: "en-US")
                    a.rate = 0.5
                    let s = AVSpeechSynthesizer()
                    s.speak(a)
                }else if(text.contains("symptom") && (text.contains("depression") || text.contains("depressed"))){
                    self.label4.text = "The symptoms of depression are feelings of sadness, emptiness or hopelessness, angry outbursts, loss of interest, and so on."
                    let a = AVSpeechUtterance(string: "The symptoms of depression are feelings of sadness, emptiness or hopelessness, angry outbursts, loss of interest, and so on.")
                    a.voice = AVSpeechSynthesisVoice(language: "en-US")
                    a.rate = 0.5
                    let s = AVSpeechSynthesizer()
                    s.speak(a)
                }else if(text.contains("symptoms") && (text.contains("depression") || text.contains("depressed"))){
                    self.label4.text = "The symptoms of depression are feelings of sadness, emptiness or hopelessness, angry outbursts, loss of interest, and so on."
                    let a = AVSpeechUtterance(string: "The symptoms of depression are feelings of sadness, emptiness or hopelessness, angry outbursts, loss of interest, and so on.")
                    a.voice = AVSpeechSynthesisVoice(language: "en-US")
                    a.rate = 0.5
                    let s = AVSpeechSynthesizer()
                    s.speak(a)
                }else if((text.contains("What is") || text.contains("What's")) && text.contains("anxiety")){
                    self.label4.text = "People with anxiety disorders frequently have intense, excessive and persistent worry and fear about everyday situations."
                    let a = AVSpeechUtterance(string: "People with anxiety disorders frequently have intense, excessive and persistent worry and fear about everyday situations.")
                    a.voice = AVSpeechSynthesisVoice(language: "en-US")
                    a.rate = 0.5
                    let s = AVSpeechSynthesizer()
                    s.speak(a)
                }else if(text.contains("symptoms") && text.contains("anxiety")){
                    self.label4.text = "The symptoms of anxiety are feeling nervous, restless, having a sense of impending danger, panic, sweating, and so on."
                    let a = AVSpeechUtterance(string: "The symptoms of anxiety are feeling nervous, restless, having a sense of impending danger, panic, sweating, and so on.")
                    a.voice = AVSpeechSynthesisVoice(language: "en-US")
                    a.rate = 0.5
                    let s = AVSpeechSynthesizer()
                    s.speak(a)
                }else if(text.contains("symptom") && text.contains("anxiety")){
                    self.label4.text = "The symptoms of anxiety are feeling nervous, restless, having a sense of impending danger, panic, sweating, and so on."
                    let a = AVSpeechUtterance(string: "The symptoms of anxiety are feeling nervous, restless, having a sense of impending danger, panic, sweating, and so on.")
                    a.voice = AVSpeechSynthesisVoice(language: "en-US")
                    a.rate = 0.5
                    let s = AVSpeechSynthesizer()
                    s.speak(a)
                }else if((text.contains("What is") || text.contains("What's")) && (text.contains("hostility") || text.contains("anger"))){
                    self.label4.text = "Anger disorder is a mental health condition marked by frequent impulsive anger outbursts or aggression."
                    let a = AVSpeechUtterance(string: "Anger disorder is a mental health condition marked by frequent impulsive anger outbursts or aggression.")
                    a.voice = AVSpeechSynthesisVoice(language: "en-US")
                    a.rate = 0.5
                    let s = AVSpeechSynthesizer()
                    s.speak(a)
                }else if(text.contains("symptoms") && (text.contains("hostility") || text.contains("anger"))){
                    self.label4.text = "The symptoms of anger disorder are temper tantrums, verbal arguments, physically assaulting people, road rage, and so on."
                    let a = AVSpeechUtterance(string: "The symptoms of anger disorder are temper tantrums, verbal arguments, physically assaulting people, road rage, and so on.")
                    a.voice = AVSpeechSynthesisVoice(language: "en-US")
                    a.rate = 0.5
                    let s = AVSpeechSynthesizer()
                    s.speak(a)
                }else if(text.contains("symptom") && (text.contains("hostility") || text.contains("anger"))){
                    self.label4.text = "The symptoms of anger disorder are temper tantrums, verbal arguments, physically assaulting people, road rage, and so on."
                    let a = AVSpeechUtterance(string: "The symptoms of anger disorder are temper tantrums, verbal arguments, physically assaulting people, road rage, and so on.")
                    a.voice = AVSpeechSynthesisVoice(language: "en-US")
                    a.rate = 0.5
                    let s = AVSpeechSynthesizer()
                    s.speak(a)
                }else if((text.contains("What is") || text.contains("What's")) && (text.contains("phobic") || text.contains("phobia") || text.contains("phobias"))){
                    self.label4.text = "Phobic anxiety is an unreasonable fear of objects or situations that pose little danger but provoke anxiety and avoidance."
                    let a = AVSpeechUtterance(string: "Phobic anxiety is an unreasonable fear of objects or situations that pose little danger but provoke anxiety and avoidance.")
                    a.voice = AVSpeechSynthesisVoice(language: "en-US")
                    a.rate = 0.5
                    let s = AVSpeechSynthesizer()
                    s.speak(a)
                }else if(text.contains("symptoms") && (text.contains("phobic") || text.contains("phobia") || text.contains("phobias"))){
                    self.label4.text = "The symptoms of phobic anxiety are fear of situations, nature, animals or insects, blood, choking, loud noises, and so on."
                    let a = AVSpeechUtterance(string: "The symptoms of phobic anxiety are fear of situations, nature, animals or insects, blood, choking, loud noises, and so on.")
                    a.voice = AVSpeechSynthesisVoice(language: "en-US")
                    a.rate = 0.5
                    let s = AVSpeechSynthesizer()
                    s.speak(a)
                }else if(text.contains("symptom") && (text.contains("phobic") || text.contains("phobia") || text.contains("phobias"))){
                    self.label4.text = "The symptoms of phobic anxiety are fear of situations, nature, animals or insects, blood, choking, loud noises, and so on."
                    let a = AVSpeechUtterance(string: "The symptoms of phobic anxiety are fear of situations, nature, animals or insects, blood, choking, loud noises, and so on.")
                    a.voice = AVSpeechSynthesisVoice(language: "en-US")
                    a.rate = 0.5
                    let s = AVSpeechSynthesizer()
                    s.speak(a)
                }else if((text.contains("What is") || text.contains("What's")) && (text.contains("paranoid") || text.contains("paranoia"))){
                    self.label4.text = "Paranoia is characterized by the experience of feeling threatened, persecuted, or conspired against."
                    let a = AVSpeechUtterance(string: "Paranoia is characterized by the experience of feeling threatened, persecuted, or conspired against.")
                    a.voice = AVSpeechSynthesisVoice(language: "en-US")
                    a.rate = 0.5
                    let s = AVSpeechSynthesizer()
                    s.speak(a)
                }else if(text.contains("symptoms") && (text.contains("paranoid") || text.contains("paranoia"))){
                    self.label4.text = "The symptoms of paranoid are anxiety, stress, difficulty with relationships, distrust, feeling isolated, and so on."
                    let a = AVSpeechUtterance(string: "The symptoms of paranoid are anxiety, stress, difficulty with relationships, distrust, feeling isolated, and so on.")
                    a.voice = AVSpeechSynthesisVoice(language: "en-US")
                    a.rate = 0.5
                    let s = AVSpeechSynthesizer()
                    s.speak(a)
                }else if(text.contains("symptom") && (text.contains("paranoid") || text.contains("paranoia"))){
                    self.label4.text = "The symptoms of paranoid are anxiety, stress, difficulty with relationships, distrust, feeling isolated, and so on."
                    let a = AVSpeechUtterance(string: "The symptoms of paranoid are anxiety, stress, difficulty with relationships, distrust, feeling isolated, and so on.")
                    a.voice = AVSpeechSynthesisVoice(language: "en-US")
                    a.rate = 0.5
                    let s = AVSpeechSynthesizer()
                    s.speak(a)
                }else if((text.contains("What is") || text.contains("What's")) && (text.contains("psychoticism") || text.contains("psychotic") || text.contains("psycho"))){
                    self.label4.text = "Psychosis describes conditions that affect the mind, and people have trouble distinguishing between what is real and what isn't."
                    let a = AVSpeechUtterance(string: "Psychosis describes conditions that affect the mind, and people have trouble distinguishing between what is real and what isn't.")
                    a.voice = AVSpeechSynthesisVoice(language: "en-US")
                    a.rate = 0.5
                    let s = AVSpeechSynthesizer()
                    s.speak(a)
                }else if(text.contains("symptoms") && (text.contains("psychoticism") || text.contains("psychotic") || text.contains("psycho"))){
                    self.label4.text = "The symptoms of psychosis are hallucinations, delusions or fixed false beliefs, confused or illogical thinking, and so on."
                    let a = AVSpeechUtterance(string: "The symptoms of psychosis are hallucinations, delusions or fixed false beliefs, confused or illogical thinking, and so on.")
                    a.voice = AVSpeechSynthesisVoice(language: "en-US")
                    a.rate = 0.5
                    let s = AVSpeechSynthesizer()
                    s.speak(a)
                }else if(text.contains("symptom") && (text.contains("psychoticism") || text.contains("psychotic") || text.contains("psycho"))){
                    self.label4.text = "The symptoms of psychosis are hallucinations, delusions or fixed false beliefs, confused or illogical thinking, and so on."
                    let a = AVSpeechUtterance(string: "The symptoms of psychosis are hallucinations, delusions or fixed false beliefs, confused or illogical thinking, and so on.")
                    a.voice = AVSpeechSynthesisVoice(language: "en-US")
                    a.rate = 0.5
                    let s = AVSpeechSynthesizer()
                    s.speak(a)
                }else{
                    self.label4.text = "Sorry \(PinkViewController.name!)! I didn't get what you mean. Could you please try speaking again?"
                    let a = AVSpeechUtterance(string: "Sorry \(PinkViewController.name!)! I didn't get what you mean. Could you please try speaking again?")
                    a.voice = AVSpeechSynthesisVoice(language: "en-US")
                    a.rate = 0.5
                    let s = AVSpeechSynthesizer()
                    s.speak(a)
                }
                
                
                self.label4.isHidden = false
                self.label1.text = "Transcript:"
               // self.label3.text = text
                self.label1.isHidden = false
               // self.label3.isHidden = false
                self.myButton.isHidden = false
                self.myButton.setTitle("Speak", for: UIControl.State.normal)
            } else{
                print("In progress: \(text)")

            }
            
        }, errorHandler: {error in

        })
 
        view.backgroundColor = .systemCyan
        self.myButton.isHidden = false
        self.myButton.setTitle("Speak", for: UIControl.State.normal)
    }

}
