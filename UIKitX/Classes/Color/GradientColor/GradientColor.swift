//
//  GradientColor.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

import UIKit

extension UIGradient {
    
    convenience public init(_ set: Gradients,
                            start: AxesPoint = .topRight,
                            end: AxesPoint = .bottomLeft,
                            locations: [NSNumber]? = nil,
                            cornerEdges: CGFloat = 0,
                            roundEdges: Bool = false,
                            style: CAGradientLayerType = .axial) {
        
        
        switch set {
        case .warmFlame:
            let c = [#colorLiteral(red: 1, green: 0.6039215686, blue: 0.6196078431, alpha: 1),#colorLiteral(red: 0.9803921569, green: 0.8156862745, blue: 0.768627451, alpha: 1),#colorLiteral(red: 0.9803921569, green: 0.8156862745, blue: 0.768627451, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations, cornerEdges: cornerEdges, roundEdges: roundEdges, style: style )
        case .nightFade:
            let c = [#colorLiteral(red: 0.631372549, green: 0.5490196078, blue: 0.8196078431, alpha: 1),#colorLiteral(red: 0.9843137255, green: 0.7607843137, blue: 0.9215686275, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations, cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
        case .springWarmth:
            let c = [#colorLiteral(red: 0.9803921569, green: 0.8156862745, blue: 0.768627451, alpha: 1),#colorLiteral(red: 0.9803921569, green: 0.8156862745, blue: 0.768627451, alpha: 1),#colorLiteral(red: 1, green: 0.8196078431, blue: 1, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations != nil ? locations : [0.0, 0.01, 1.0], cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
        case .juicyPeach:
            let c = [#colorLiteral(red: 1, green: 0.9254901961, blue: 0.8235294118, alpha: 1),#colorLiteral(red: 0.9803921569, green: 0.8156862745, blue: 0.768627451, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations, cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
        case .youngPassion:
            let c = [#colorLiteral(red: 1, green: 0.5058823529, blue: 0.4666666667, alpha: 1),#colorLiteral(red: 1, green: 0.5254901961, blue: 0.4784313725, alpha: 1),#colorLiteral(red: 1, green: 0.5490196078, blue: 0.4980392157, alpha: 1),#colorLiteral(red: 0.9764705882, green: 0.568627451, blue: 0.5215686275, alpha: 1),#colorLiteral(red: 0.8117647059, green: 0.3333333333, blue: 0.4235294118, alpha: 1),#colorLiteral(red: 0.6941176471, green: 0.1647058824, blue: 0.3568627451, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations != nil ? locations : [0.0, 0.0, 0.21, 0.52, 0.78, 1.0], cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
            
            
        case .ladyLips:
            let c = [#colorLiteral(red: 1, green: 0.6039215686, blue: 0.6196078431, alpha: 1),#colorLiteral(red: 0.9960784314, green: 0.8117647059, blue: 0.937254902, alpha: 1),#colorLiteral(red: 0.9960784314, green: 0.8117647059, blue: 0.937254902, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations != nil ? locations : [0.0, 0.99, 1.0], cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
        case .sunnyMorning:
            let c = [#colorLiteral(red: 0.9647058824, green: 0.8274509804, blue: 0.3960784314, alpha: 1),#colorLiteral(red: 0.9921568627, green: 0.6274509804, blue: 0.5215686275, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations, cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
        case .rainyAshville:
            let c = [#colorLiteral(red: 0.9843137255, green: 0.7607843137, blue: 0.9215686275, alpha: 1),#colorLiteral(red: 0.6509803922, green: 0.7568627451, blue: 0.9333333333, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations, cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
        case .frozenDreams:
            let c = [#colorLiteral(red: 0.9921568627, green: 0.7960784314, blue: 0.9450980392, alpha: 1),#colorLiteral(red: 0.9960784314, green: 0.8117647059, blue: 0.937254902, alpha: 1),#colorLiteral(red: 0.9019607843, green: 0.8705882353, blue: 0.9137254902, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations != nil ? locations : [0.0, 0.01, 1.0], cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
        case .winterNeva:
            let c = [#colorLiteral(red: 0.631372549, green: 0.768627451, blue: 0.9921568627, alpha: 1),#colorLiteral(red: 0.7607843137, green: 0.9137254902, blue: 0.9843137255, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations, cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
            
            
        case .dustyGrass:
            let c = [#colorLiteral(red: 0.831372549, green: 0.9882352941, blue: 0.4745098039, alpha: 1),#colorLiteral(red: 0.5882352941, green: 0.9019607843, blue: 0.631372549, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations, cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
        case .temptingAzure:
            let c = [#colorLiteral(red: 0.5176470588, green: 0.9803921569, blue: 0.6901960784, alpha: 1),#colorLiteral(red: 0.5607843137, green: 0.8274509804, blue: 0.9568627451, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations, cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
        case .heavyRain:
            let c = [#colorLiteral(red: 0.8117647059, green: 0.8509803922, blue: 0.8745098039, alpha: 1),#colorLiteral(red: 0.8862745098, green: 0.9215686275, blue: 0.9411764706, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations, cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
        case .amyCrisp:
            let c = [#colorLiteral(red: 0.6509803922, green: 0.7529411765, blue: 0.9960784314, alpha: 1),#colorLiteral(red: 0.5607843137, green: 0.8274509804, blue: 0.9568627451, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations, cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
        case .meanFruit:
            let c = [#colorLiteral(red: 0.9882352941, green: 0.7960784314, blue: 0.5647058824, alpha: 1),#colorLiteral(red: 0.8352941176, green: 0.4941176471, blue: 0.9215686275, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations, cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
            
            
        case .softBlue:
            let c = [#colorLiteral(red: 0.8784313725, green: 0.7647058824, blue: 0.9882352941, alpha: 1),#colorLiteral(red: 0.5568627451, green: 0.7725490196, blue: 0.9882352941, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations, cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
        case .ripeMalinka:
            let c = [#colorLiteral(red: 0.9411764706, green: 0.5764705882, blue: 0.9843137255, alpha: 1),#colorLiteral(red: 0.9607843137, green: 0.3411764706, blue: 0.4235294118, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations, cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
        case .cloudyKnoxville:
            let c = [#colorLiteral(red: 0.9921568627, green: 0.9843137255, blue: 0.9843137255, alpha: 1),#colorLiteral(red: 0.9215686275, green: 0.9294117647, blue: 0.9333333333, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations, cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
        case .malibuBeach:
            let c = [#colorLiteral(red: 0.3098039216, green: 0.6745098039, blue: 0.9960784314, alpha: 1),#colorLiteral(red: 0, green: 0.9490196078, blue: 0.9960784314, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations, cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
        case .newLife:
            let c = [#colorLiteral(red: 0.262745098, green: 0.9137254902, blue: 0.4823529412, alpha: 1),#colorLiteral(red: 0.2196078431, green: 0.9764705882, blue: 0.8431372549, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations, cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
            
            
        case .trueSunset:
            let c = [#colorLiteral(red: 0.9803921569, green: 0.4392156863, blue: 0.6039215686, alpha: 1),#colorLiteral(red: 0.9960784314, green: 0.8823529412, blue: 0.2509803922, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations, cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
        case .morpheusDen:
            let c = [#colorLiteral(red: 0.1882352941, green: 0.8117647059, blue: 0.8156862745, alpha: 1),#colorLiteral(red: 0.2, green: 0.03137254902, blue: 0.4039215686, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations, cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
        case .rareWind:
            let c = [#colorLiteral(red: 0.6588235294, green: 0.9294117647, blue: 0.9176470588, alpha: 1),#colorLiteral(red: 0.9960784314, green: 0.8392156863, blue: 0.8901960784, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations, cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
        case .nearMoon:
            let c = [#colorLiteral(red: 0.368627451, green: 0.9058823529, blue: 0.8745098039, alpha: 1),#colorLiteral(red: 0.7058823529, green: 0.5647058824, blue: 0.7921568627, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations, cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
        case .wildApple:
            let c = [#colorLiteral(red: 0.8235294118, green: 0.6, blue: 0.7607843137, alpha: 1),#colorLiteral(red: 0.9960784314, green: 0.9764705882, blue: 0.8431372549, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations, cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
            
            
        case .saintPetersburg:
            let c = [#colorLiteral(red: 0.9607843137, green: 0.968627451, blue: 0.9803921569, alpha: 1),#colorLiteral(red: 0.7647058824, green: 0.8117647059, blue: 0.8862745098, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations, cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
        case .ariellesSmile:
            let c = [#colorLiteral(red: 0.0862745098, green: 0.8509803922, blue: 0.8901960784, alpha: 1),#colorLiteral(red: 0.1882352941, green: 0.7803921569, blue: 0.9254901961, alpha: 1),#colorLiteral(red: 0.2745098039, green: 0.6823529412, blue: 0.968627451, alpha: 1)] //
            self.init(colors: c, start: start, end: end, locations: locations != nil ? locations : [0.0, 0.47, 1.0], cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
        case .plumPlate:
            let c = [#colorLiteral(red: 0.4, green: 0.4941176471, blue: 0.9176470588, alpha: 1),#colorLiteral(red: 0.462745098, green: 0.2941176471, blue: 0.6352941176, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations, cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
        case .everlastingSky:
            let c = [#colorLiteral(red: 0.9921568627, green: 0.9882352941, blue: 0.9843137255, alpha: 1),#colorLiteral(red: 0.8862745098, green: 0.8196078431, blue: 0.7647058824, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations, cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
        case .happyFisher:
            let c = [#colorLiteral(red: 0.537254902, green: 0.968627451, blue: 0.9960784314, alpha: 1),#colorLiteral(red: 0.4, green: 0.6509803922, blue: 1, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations, cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
            
            
        case .blessing:
            let c = [#colorLiteral(red: 0.9921568627, green: 0.8588235294, blue: 0.5725490196, alpha: 1),#colorLiteral(red: 0.8196078431, green: 0.9921568627, blue: 1, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations, cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
        case .sharpeyeEagle:
            let c = [#colorLiteral(red: 0.5960784314, green: 0.5647058824, blue: 0.8901960784, alpha: 1),#colorLiteral(red: 0.6941176471, green: 0.9568627451, blue: 0.8117647059, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations, cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
        case .ladogaBottom:
            let c = [#colorLiteral(red: 0.9215686275, green: 0.7529411765, blue: 0.9921568627, alpha: 1),#colorLiteral(red: 0.8509803922, green: 0.8705882353, blue: 0.8470588235, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations, cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
        case .lemonGate:
            let c = [#colorLiteral(red: 0.5882352941, green: 0.9843137255, blue: 0.768627451, alpha: 1),#colorLiteral(red: 0.9764705882, green: 0.9607843137, blue: 0.5254901961, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations, cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
        case .itmeoBranding:
            let c = [#colorLiteral(red: 0.1647058824, green: 0.9607843137, blue: 0.5960784314, alpha: 1),#colorLiteral(red: 0, green: 0.6196078431, blue: 0.9921568627, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations, cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
            
            
        case .zeusMiracle:
            let c = [#colorLiteral(red: 0.8039215686, green: 0.6117647059, blue: 0.9490196078, alpha: 1),#colorLiteral(red: 0.9647058824, green: 0.9529411765, blue: 1, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations, cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
        case .oldHat:
            let c = [#colorLiteral(red: 0.8941176471, green: 0.6862745098, blue: 0.7960784314, alpha: 1),#colorLiteral(red: 0.7215686275, green: 0.7960784314, blue: 0.7215686275, alpha: 1),#colorLiteral(red: 0.7215686275, green: 0.7960784314, blue: 0.7215686275, alpha: 1),#colorLiteral(red: 0.8862745098, green: 0.7725490196, blue: 0.5450980392, alpha: 1),#colorLiteral(red: 0.7607843137, green: 0.8078431373, blue: 0.6117647059, alpha: 1),#colorLiteral(red: 0.4941176471, green: 0.8588235294, blue: 0.862745098, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations != nil ? locations : [0.0, 0.0, 0.0, 0.3, 0.64, 1.0], cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
        case .starWine:
            let c = [#colorLiteral(red: 0.7215686275, green: 0.7960784314, blue: 0.7215686275, alpha: 1),#colorLiteral(red: 0.7215686275, green: 0.7960784314, blue: 0.7215686275, alpha: 1),#colorLiteral(red: 0.7058823529, green: 0.3960784314, blue: 0.8549019608, alpha: 1),#colorLiteral(red: 0.8117647059, green: 0.4235294118, blue: 0.7882352941, alpha: 1),#colorLiteral(red: 0.9333333333, green: 0.3764705882, blue: 0.6117647059, alpha: 1),#colorLiteral(red: 0.9333333333, green: 0.3764705882, blue: 0.6117647059, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations != nil ? locations : [0.0, 0.0, 0.0, 0.33, 0.66, 1.0], cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
        case .deepBlue:
            let c = [#colorLiteral(red: 0.4156862745, green: 0.06666666667, blue: 0.7960784314, alpha: 1),#colorLiteral(red: 0.1450980392, green: 0.4588235294, blue: 0.9882352941, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations, cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
        case .coupDeGrace:
            let c = [#colorLiteral(red: 0.862745098, green: 0.8509803922, blue: 0.831372549, alpha: 1),#colorLiteral(red: 0.862745098, green: 0.819751634, blue: 0.7505882353, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations, cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
            
            
        case .happyAcid:
            let c = [#colorLiteral(red: 0.2156862745, green: 0.9254901961, blue: 0.7294117647, alpha: 1),#colorLiteral(red: 0.4470588235, green: 0.6862745098, blue: 0.8274509804, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations, cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
        case .awesomePine:
            let c = [#colorLiteral(red: 0.9215686275, green: 0.7333333333, blue: 0.6549019608, alpha: 1),#colorLiteral(red: 0.8117647059, green: 0.7803921569, blue: 0.9725490196, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations, cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
        case .newYork:
            let c = [#colorLiteral(red: 1, green: 0.9450980392, blue: 0.9215686275, alpha: 1),#colorLiteral(red: 0.6745098039, green: 0.8784313725, blue: 0.9764705882, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations, cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
        case .shyRainbow:
            let c = [#colorLiteral(red: 0.9333333333, green: 0.6352941176, blue: 0.6352941176, alpha: 1),#colorLiteral(red: 0.7333333333, green: 0.7568627451, blue: 0.7490196078, alpha: 1),#colorLiteral(red: 0.3411764706, green: 0.7764705882, blue: 0.8823529412, alpha: 1),#colorLiteral(red: 0.7058823529, green: 0.6235294118, blue: 0.8549019608, alpha: 1),#colorLiteral(red: 0.4784313725, green: 0.7725490196, blue: 0.8470588235, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations != nil ? locations : [0.0, 0.19, 0.42, 0.79, 1.0], cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
        case .loonCrest:
            let c = [#colorLiteral(red: 0.5960784314, green: 0.5960784314, blue: 0.5960784314, alpha: 1),#colorLiteral(red: 0.34, green: 0.34, blue: 0.34, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations, cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
            
            
        case .mixedHopes:
            let c = [#colorLiteral(red: 0.768627451, green: 0.4431372549, blue: 0.9607843137, alpha: 1),#colorLiteral(red: 0.9803921569, green: 0.4431372549, blue: 0.8039215686, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations, cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
        case .flyHigh:
            let c = [#colorLiteral(red: 0.2823529412, green: 0.7764705882, blue: 0.937254902, alpha: 1),#colorLiteral(red: 0.4352941176, green: 0.5254901961, blue: 0.8392156863, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations, cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
        case .strongBliss:
            let c = [#colorLiteral(red: 0.968627451, green: 0.5490196078, blue: 0.6274509804, alpha: 1),#colorLiteral(red: 0.9764705882, green: 0.4549019608, blue: 0.5607843137, alpha: 1),#colorLiteral(red: 0.9921568627, green: 0.5254901961, blue: 0.5490196078, alpha: 1),#colorLiteral(red: 0.9960784314, green: 0.6039215686, blue: 0.5450980392, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations != nil ? locations : [0.0, 0.19, 0.6, 1.0], cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
        case .freshMilk:
            let c = [#colorLiteral(red: 0.9960784314, green: 0.6784313725, blue: 0.6509803922, alpha: 1),#colorLiteral(red: 0.9607843137, green: 0.937254902, blue: 0.937254902, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations, cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
        case .snowAgain:
            let c = [#colorLiteral(red: 0.9019607843, green: 0.9137254902, blue: 0.9411764706, alpha: 1),#colorLiteral(red: 0.9333333333, green: 0.9450980392, blue: 0.9607843137, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations, cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
            
            
        case .februaryInk:
            let c = [#colorLiteral(red: 0.6745098039, green: 0.7960784314, blue: 0.9333333333, alpha: 1),#colorLiteral(red: 0.9058823529, green: 0.9411764706, blue: 0.9921568627, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations, cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
        case .kindSteel:
            let c = [#colorLiteral(red: 0.9137254902, green: 0.8705882353, blue: 0.9803921569, alpha: 1),#colorLiteral(red: 0.9843137255, green: 0.9882352941, blue: 0.8588235294, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations, cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
        case .softGrass:
            let c = [#colorLiteral(red: 0.7568627451, green: 0.8745098039, blue: 0.768627451, alpha: 1),#colorLiteral(red: 0.8705882353, green: 0.9254901961, blue: 0.8666666667, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations, cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
        case .grownEarly:
            let c = [#colorLiteral(red: 0.0431372549, green: 0.6392156863, blue: 0.3764705882, alpha: 1),#colorLiteral(red: 0.2352941176, green: 0.7294117647, blue: 0.5725490196, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations, cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
        case .sharpBlues:
            let c = [#colorLiteral(red: 0, green: 0.7764705882, blue: 0.9843137255, alpha: 1),#colorLiteral(red: 0, green: 0.3568627451, blue: 0.9176470588, alpha: 1)]
            self.init(colors: c, start: start, end: end, locations: locations, cornerEdges: cornerEdges, roundEdges: roundEdges, style: style)
        }
    }
    
}
