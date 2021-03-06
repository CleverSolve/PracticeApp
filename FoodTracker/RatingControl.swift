import UIKit

@IBDesignable class RatingControl: UIStackView
{
    
    //MARK: Properties
    private var ratingButtons = [UIButton]()
    @IBInspectable var starSize: CGSize = CGSize(width: 44.0, height: 44.0)
    @IBInspectable var starCount: Int = 5
    
    var rating = 0
    
    //MARK: Initialization
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        setupButtons()
    }
    
    required init(coder: NSCoder)
    {
        super.init(coder: coder)
        setupButtons()
    }
    
    //MARK: Button Action
    func ratingButtonTapped(button: UIButton)
    {
        print("Button pressed 👍")
    }
    
    //MARK: Private Methods
    
    private func setupButtons()
    {
        for _ in 0..<5
        {
            // Create the button
            let button = UIButton()
            button.backgroundColor = UIColor.red
            
            //Add contraints
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
            button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
            
            // Setup the button action
            button.addTarget(self, action:
                #selector(RatingControl.ratingButtonTapped(button:)),for: .touchUpInside)
            
            //Add the button to the stack
            addArrangedSubview(button)
            
            // Add the new button the rating button array
            ratingButtons.append(button)
        }
    }
    
} // End of Class
