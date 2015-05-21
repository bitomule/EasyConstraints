//: Playground - noun: a place where people can play

import UIKit

infix operator ^ {}

infix operator *^ {}

infix operator << {}

infix operator >> {}

infix operator ><> {}

infix operator <>> {}

infix operator *><> {}

infix operator *<>< {}

infix operator <|> {}

//TOP
func ^ (view1:UIView,relatedTo:(view2:UIView,constant:CGFloat)) -> NSLayoutConstraint{
    return NSLayoutConstraint(item: view1, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: relatedTo.view2, attribute: NSLayoutAttribute.Top, multiplier: 1, constant: relatedTo.constant)
}

//BOTTOM
func *^ (view1:UIView,relatedTo:(view2:UIView,constant:CGFloat)) -> NSLayoutConstraint{
    return NSLayoutConstraint(item: view1, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: relatedTo.view2, attribute: NSLayoutAttribute.Bottom, multiplier: 1, constant: relatedTo.constant)
}

//LEFT
func << (view1:UIView,relatedTo:(view2:UIView,constant:CGFloat)) -> NSLayoutConstraint{
    return NSLayoutConstraint(item: relatedTo.view2, attribute: NSLayoutAttribute.Leading, relatedBy: NSLayoutRelation.Equal, toItem: view1, attribute: NSLayoutAttribute.Leading, multiplier: 1, constant: relatedTo.constant)
}

//RIGHT
func >> (view1:UIView,relatedTo:(view2:UIView,constant:CGFloat)) -> NSLayoutConstraint{
    return NSLayoutConstraint(item: view1, attribute: NSLayoutAttribute.Trailing, relatedBy: NSLayoutRelation.Equal, toItem: relatedTo.view2, attribute: NSLayoutAttribute.Trailing, multiplier: 1, constant: relatedTo.constant)

}

//LEADING HORIZONTAL SPACE
func ><> (view1:UIView,relatedTo:(view2:UIView,constant:CGFloat)) -> NSLayoutConstraint{
    return NSLayoutConstraint(item: view1, attribute: NSLayoutAttribute.Leading, relatedBy: NSLayoutRelation.Equal, toItem: relatedTo.view2, attribute: NSLayoutAttribute.Trailing, multiplier: 1, constant: relatedTo.constant)
}

//TRAILING HORIZONTAL SPACE
func <>> (view1:UIView,relatedTo:(view2:UIView,constant:CGFloat)) -> NSLayoutConstraint{
    return NSLayoutConstraint(item: view1, attribute: NSLayoutAttribute.Trailing, relatedBy: NSLayoutRelation.Equal, toItem: relatedTo.view2, attribute: NSLayoutAttribute.Leading, multiplier: 1, constant: relatedTo.constant)
}

//LEADING VERTICAL SPACE
func *><> (view1:UIView,relatedTo:(view2:UIView,constant:CGFloat)) -> NSLayoutConstraint{
    return NSLayoutConstraint(item: view1, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: relatedTo.view2, attribute: NSLayoutAttribute.Bottom, multiplier: 1, constant: relatedTo.constant)
}

//TRAILING VERTICAL SPACE
func *<>< (view1:UIView,relatedTo:(view2:UIView,constant:CGFloat)) -> NSLayoutConstraint{
    return NSLayoutConstraint(item: view1, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: relatedTo.view2, attribute: NSLayoutAttribute.Top, multiplier: 1, constant: relatedTo.constant)
}


let view1 = UIView()
let view2 = UIView()
view1^(view2,10)

view1*^(view2,10)

view1<<(view2,10)

view1>>(view2,10)

view1><>(view2,10)
