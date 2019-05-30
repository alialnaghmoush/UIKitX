//
//  GradientColor.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

import UIKit

extension UIView {
    
    @discardableResult
    public func gradient(set: Gradients, corner: CGFloat = 0) -> UIView {
        
        switch set {
        case .warmFlame:
            let c = [#colorLiteral(red: 1, green: 0.6039215686, blue: 0.6196078431, alpha: 1),#colorLiteral(red: 0.9803921569, green: 0.8156862745, blue: 0.768627451, alpha: 1),#colorLiteral(red: 0.9803921569, green: 0.8156862745, blue: 0.768627451, alpha: 1)]
            self.gradient(colors: c, corner: corner)
        case .nightFade:
            let c = [#colorLiteral(red: 0.631372549, green: 0.5490196078, blue: 0.8196078431, alpha: 1),#colorLiteral(red: 0.9843137255, green: 0.7607843137, blue: 0.9215686275, alpha: 1)]
            self.gradient(colors: c, corner: corner)
        case .springWarmth:
            let c = [#colorLiteral(red: 0.9803921569, green: 0.8156862745, blue: 0.768627451, alpha: 1),#colorLiteral(red: 0.9803921569, green: 0.8156862745, blue: 0.768627451, alpha: 1),#colorLiteral(red: 1, green: 0.8196078431, blue: 1, alpha: 1)]
            self.gradient(colors: c, locations: [0.0, 0.01, 1.0], corner: corner)
            
            
        case .juicyPeach:
            let c = [#colorLiteral(red: 1, green: 0.9254901961, blue: 0.8235294118, alpha: 1),#colorLiteral(red: 0.9803921569, green: 0.8156862745, blue: 0.768627451, alpha: 1)]
            self.gradient(colors: c, corner: corner)
        case .youngPassion:
            let c = [#colorLiteral(red: 1, green: 0.5058823529, blue: 0.4666666667, alpha: 1),#colorLiteral(red: 1, green: 0.5254901961, blue: 0.4784313725, alpha: 1),#colorLiteral(red: 1, green: 0.5490196078, blue: 0.4980392157, alpha: 1),#colorLiteral(red: 0.9764705882, green: 0.568627451, blue: 0.5215686275, alpha: 1),#colorLiteral(red: 0.8117647059, green: 0.3333333333, blue: 0.4235294118, alpha: 1),#colorLiteral(red: 0.6941176471, green: 0.1647058824, blue: 0.3568627451, alpha: 1)]
            self.gradient(colors: c, locations: [0.0, 0.0, 0.21, 0.52, 0.78, 1.0], corner: corner)
        case .ladyLips:
            let c = [#colorLiteral(red: 1, green: 0.6039215686, blue: 0.6196078431, alpha: 1),#colorLiteral(red: 0.9960784314, green: 0.8117647059, blue: 0.937254902, alpha: 1),#colorLiteral(red: 0.9960784314, green: 0.8117647059, blue: 0.937254902, alpha: 1)]
            self.gradient(colors: c, locations: [0.0, 0.99, 1.0], corner: corner)
            
            
        case .sunnyMorning:
            let c = [#colorLiteral(red: 0.9647058824, green: 0.8274509804, blue: 0.3960784314, alpha: 1),#colorLiteral(red: 0.9921568627, green: 0.6274509804, blue: 0.5215686275, alpha: 1)]
            self.gradient(colors: c, corner: corner)
        case .rainyAshville:
            let c = [#colorLiteral(red: 0.9843137255, green: 0.7607843137, blue: 0.9215686275, alpha: 1),#colorLiteral(red: 0.6509803922, green: 0.7568627451, blue: 0.9333333333, alpha: 1)]
            self.gradient(colors: c, corner: corner)
        case .frozenDreams:
            let c = [#colorLiteral(red: 0.9921568627, green: 0.7960784314, blue: 0.9450980392, alpha: 1),#colorLiteral(red: 0.9960784314, green: 0.8117647059, blue: 0.937254902, alpha: 1),#colorLiteral(red: 0.9019607843, green: 0.8705882353, blue: 0.9137254902, alpha: 1)]
            self.gradient(colors: c, locations: [0.0, 0.01, 1.0], corner: corner)
            
            
        case .winterNeva:
            let c = [#colorLiteral(red: 0.631372549, green: 0.768627451, blue: 0.9921568627, alpha: 1),#colorLiteral(red: 0.7607843137, green: 0.9137254902, blue: 0.9843137255, alpha: 1)]
            self.gradient(colors: c, corner: corner)
        case .dustyGrass:
            let c = [#colorLiteral(red: 0.831372549, green: 0.9882352941, blue: 0.4745098039, alpha: 1),#colorLiteral(red: 0.5882352941, green: 0.9019607843, blue: 0.631372549, alpha: 1)]
            self.gradient(colors: c, corner: corner)
        case .temptingAzure:
            let c = [#colorLiteral(red: 0.5176470588, green: 0.9803921569, blue: 0.6901960784, alpha: 1),#colorLiteral(red: 0.5607843137, green: 0.8274509804, blue: 0.9568627451, alpha: 1)]
            self.gradient(colors: c, corner: corner)
            
            
        case .heavyRain:
            let c = [#colorLiteral(red: 0.8117647059, green: 0.8509803922, blue: 0.8745098039, alpha: 1),#colorLiteral(red: 0.8862745098, green: 0.9215686275, blue: 0.9411764706, alpha: 1)]
            self.gradient(colors: c, corner: corner)
        case .amyCrisp:
            let c = [#colorLiteral(red: 0.6509803922, green: 0.7529411765, blue: 0.9960784314, alpha: 1),#colorLiteral(red: 0.5607843137, green: 0.8274509804, blue: 0.9568627451, alpha: 1)]
            self.gradient(colors: c, corner: corner)
        case .meanFruit:
            let c = [#colorLiteral(red: 0.9882352941, green: 0.7960784314, blue: 0.5647058824, alpha: 1),#colorLiteral(red: 0.8352941176, green: 0.4941176471, blue: 0.9215686275, alpha: 1)]
            self.gradient(colors: c, corner: corner)
            
            
        case .softBlue:
            let c = [#colorLiteral(red: 0.8784313725, green: 0.7647058824, blue: 0.9882352941, alpha: 1),#colorLiteral(red: 0.5568627451, green: 0.7725490196, blue: 0.9882352941, alpha: 1)]
            self.gradient(colors: c, corner: corner)
        case .ripeMalinka:
            let c = [#colorLiteral(red: 0.9411764706, green: 0.5764705882, blue: 0.9843137255, alpha: 1),#colorLiteral(red: 0.9607843137, green: 0.3411764706, blue: 0.4235294118, alpha: 1)]
            self.gradient(colors: c, corner: corner)
        case .cloudyKnoxville:
            let c = [#colorLiteral(red: 0.9921568627, green: 0.9843137255, blue: 0.9843137255, alpha: 1),#colorLiteral(red: 0.9215686275, green: 0.9294117647, blue: 0.9333333333, alpha: 1)]
            self.gradient(colors: c, corner: corner)
            
            
        case .malibuBeach:
            let c = [#colorLiteral(red: 0.3098039216, green: 0.6745098039, blue: 0.9960784314, alpha: 1),#colorLiteral(red: 0, green: 0.9490196078, blue: 0.9960784314, alpha: 1)]
            self.gradient(colors: c, corner: corner)
        case .newLife:
            let c = [#colorLiteral(red: 0.262745098, green: 0.9137254902, blue: 0.4823529412, alpha: 1),#colorLiteral(red: 0.2196078431, green: 0.9764705882, blue: 0.8431372549, alpha: 1)]
            self.gradient(colors: c, corner: corner)
        case .trueSunset:
            let c = [#colorLiteral(red: 0.9803921569, green: 0.4392156863, blue: 0.6039215686, alpha: 1),#colorLiteral(red: 0.9960784314, green: 0.8823529412, blue: 0.2509803922, alpha: 1)]
            self.gradient(colors: c, corner: corner)
            
            
        case .morpheusDen:
            let c = [#colorLiteral(red: 0.1882352941, green: 0.8117647059, blue: 0.8156862745, alpha: 1),#colorLiteral(red: 0.2, green: 0.03137254902, blue: 0.4039215686, alpha: 1)]
            self.gradient(colors: c, corner: corner)
        case .rareWind:
            let c = [#colorLiteral(red: 0.6588235294, green: 0.9294117647, blue: 0.9176470588, alpha: 1),#colorLiteral(red: 0.9960784314, green: 0.8392156863, blue: 0.8901960784, alpha: 1)]
            self.gradient(colors: c, corner: corner)
        case .nearMoon:
            let c = [#colorLiteral(red: 0.368627451, green: 0.9058823529, blue: 0.8745098039, alpha: 1),#colorLiteral(red: 0.7058823529, green: 0.5647058824, blue: 0.7921568627, alpha: 1)]
            self.gradient(colors: c, corner: corner)
            
            
        case .wildApple:
            let c = [#colorLiteral(red: 0.8235294118, green: 0.6, blue: 0.7607843137, alpha: 1),#colorLiteral(red: 0.9960784314, green: 0.9764705882, blue: 0.8431372549, alpha: 1)]
            self.gradient(colors: c, corner: corner)
        case .saintPetersburg:
            let c = [#colorLiteral(red: 0.9607843137, green: 0.968627451, blue: 0.9803921569, alpha: 1),#colorLiteral(red: 0.7647058824, green: 0.8117647059, blue: 0.8862745098, alpha: 1)]
            self.gradient(colors: c, corner: corner)
        case .ariellesSmile:
            let c = [#colorLiteral(red: 0.0862745098, green: 0.8509803922, blue: 0.8901960784, alpha: 1),#colorLiteral(red: 0.1882352941, green: 0.7803921569, blue: 0.9254901961, alpha: 1),#colorLiteral(red: 0.2745098039, green: 0.6823529412, blue: 0.968627451, alpha: 1)]
            self.gradient(colors: c, locations: [0.0, 0.47, 1.0], corner: corner)
            
            
        case .plumPlate:
            let c = [#colorLiteral(red: 0.4, green: 0.4941176471, blue: 0.9176470588, alpha: 1),#colorLiteral(red: 0.462745098, green: 0.2941176471, blue: 0.6352941176, alpha: 1)]
            self.gradient(colors: c, corner: corner)
        case .everlastingSky:
            let c = [#colorLiteral(red: 0.9921568627, green: 0.9882352941, blue: 0.9843137255, alpha: 1),#colorLiteral(red: 0.8862745098, green: 0.8196078431, blue: 0.7647058824, alpha: 1)]
            self.gradient(colors: c, corner: corner)
        case .happyFisher:
            let c = [#colorLiteral(red: 0.537254902, green: 0.968627451, blue: 0.9960784314, alpha: 1),#colorLiteral(red: 0.4, green: 0.6509803922, blue: 1, alpha: 1)]
            self.gradient(colors: c, corner: corner)
            
            
        case .blessing:
            let c = [#colorLiteral(red: 0.9921568627, green: 0.8588235294, blue: 0.5725490196, alpha: 1),#colorLiteral(red: 0.8196078431, green: 0.9921568627, blue: 1, alpha: 1)]
            self.gradient(colors: c, corner: corner)
        case .sharpeyeEagle:
            let c = [#colorLiteral(red: 0.5960784314, green: 0.5647058824, blue: 0.8901960784, alpha: 1),#colorLiteral(red: 0.6941176471, green: 0.9568627451, blue: 0.8117647059, alpha: 1)]
            self.gradient(colors: c, corner: corner)
        case .ladogaBottom:
            let c = [#colorLiteral(red: 0.9215686275, green: 0.7529411765, blue: 0.9921568627, alpha: 1),#colorLiteral(red: 0.8509803922, green: 0.8705882353, blue: 0.8470588235, alpha: 1)]
            self.gradient(colors: c, corner: corner)
            
            
        case .lemonGate:
            let c = [#colorLiteral(red: 0.5882352941, green: 0.9843137255, blue: 0.768627451, alpha: 1),#colorLiteral(red: 0.9764705882, green: 0.9607843137, blue: 0.5254901961, alpha: 1)]
            self.gradient(colors: c, corner: corner)
        case .itmeoBranding:
            let c = [#colorLiteral(red: 0.1647058824, green: 0.9607843137, blue: 0.5960784314, alpha: 1),#colorLiteral(red: 0, green: 0.6196078431, blue: 0.9921568627, alpha: 1)]
            self.gradient(colors: c, corner: corner)
        case .zeusMiracle:
            let c = [#colorLiteral(red: 0.8039215686, green: 0.6117647059, blue: 0.9490196078, alpha: 1),#colorLiteral(red: 0.9647058824, green: 0.9529411765, blue: 1, alpha: 1)]
            self.gradient(colors: c, corner: corner)
        }
        
        return self
    }
}
