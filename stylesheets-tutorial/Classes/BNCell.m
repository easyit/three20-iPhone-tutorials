#import "BNCell.h"
#import "BNDefaultStylesheet.h"

///////////////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////
//////   BNSubtextTableFieldCell     ////
/////////////////////////////////////////

@implementation BNSubtextTableFieldCell

///////////////////////////////////////////////////////////////////////////////////////////////////

- (void)setObject:(id)object {
	if (_field != object) {
		[super setObject:object];
		
		TTSubtextTableField* field = object;
		_label.text = field.text;
		_label.font = TTSTYLEVAR(myFirstFont);
		_label.textColor = TTSTYLEVAR(myFirstColor);
		_label.adjustsFontSizeToFitWidth = YES;
		
		_subtextLabel.text = field.subtext;
		_subtextLabel.font = TTSTYLEVAR(mySecondFont);
		_subtextLabel.textColor = TTSTYLEVAR(mySecondColor);
	}  
}


@end


///////////////////////////////////////////////////////////////////////////////////////////////////

