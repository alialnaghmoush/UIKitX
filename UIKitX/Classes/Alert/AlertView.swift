//
//  AlertView.swift
//  UIKitX
//
//  Created by Ali AlNaghmoush on 26/05/2019.
//

public class AlertView: UIView {
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Properties
    
    private var container = UIView()
    private var icon      = UIView()
    private var note      = UILabel()
    
    private var isFinish: Bool = false
    private var keyWindow: UIWindow { return UIApplication.shared.keyWindow ?? UIWindow() }
    private var swipeUp = UISwipeGestureRecognizer()
    
    public var direction: Direction = .ltr
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Initializers
    
    public init(note: String, status: AlertStatus) {
        super.init(frame: CGRect.zero)
        
        self.container  = status.container
        self.icon       = status.icon
        self.note       = status.note
        self.note.text  = note
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    open override func draw(_ rect: CGRect) {
        super.draw(rect)
    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        configAlert()
    }
    
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    //MARK: - Configure UI
    
    private func configAlert() {
        containerUI(); iconUI(); noteUI()
    }
    
    private func containerUI() {
        
        addSubview(container)
        container.addSubviews(icon,note)

        let sv = safeView(superview)

        container.fillTop(sv, spaces: 10).height(50)
        
        self.swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(dismissAlert))
        self.swipeUp.direction = .up
        sv.addGestureRecognizer(swipeUp)
        
        container.shadow(.down5)
        container.cornerEdges()
        
    }
    
    private func iconUI() {
        
        switch self.direction {
        case .rtl:
            icon.right(container, spacing: 20).height(16).width(16).centerY(container)
        case .ltr:
            icon.left(container, spacing: 20).height(16).width(16).centerY(container)
        }
        
        
    }
    
    private func noteUI() {
        
        switch self.direction {
        case .rtl:
            note.right(toLeft: icon, spacing: 10).left(container, spacing: 10)
            note.textAlignment = .right
        case .ltr:
            note.left(toRight: icon, spacing: 10).right(container, spacing: 10)
            note.textAlignment = .left
        }
        
        note.top(container).bottom(container).centerY(icon)
        
        
        note.font = UIFont(name: "Changa-Medium", size: 12)
        note.minimumScaleFactor = 6
        note.numberOfLines = 2
        
    }
    
    //MARK: - Private Methods Animation
    /// Swipe Up Gesture Recognizer
    @objc private func dismissAlert(_ sender: Any) {
        hide()
    }
    
    /// Show Alert and Hide
    public func play() {
        show()
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { self.hide() }
    }
    
    /// Show Alert
    public func show(_ animatTime: TimeInterval = 0.5) {
        
        self.keyWindow.addSubview(self)
        container.moveDown(duration: animatTime, curve: .EaseOut)
        container.fadeIn(duration: animatTime, curve: .EaseOut)
    }
    
    /// Hide Alert
    public func hide(_ timeOut: TimeInterval = 0.3) {
        
        container.moveUp(fromX: 0, fromY: 0, toX: 0, toY: -40,duration: timeOut, curve: .EaseIn)
        container.fadeOut(duration: timeOut, curve: .EaseIn)
        self.isFinish = true
        
        if isFinish {
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(timeOut)) {
                self.removeFromSuperview()
                self.isFinish = false
            }
        }
    }
    
} // end AlertView

