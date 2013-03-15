

class SRDetaileArticleViewController < UIViewController
  @@buferHeight = 20
  def initWithItem(item_)

    initWithNibName(nil, bundle: nil)
    @currentItem = item_

    self

  end

  def viewDidLoad
    super
    self.view.frame = self.navigationController.view.bounds
    self.view.autoresizingMask = $fullAutoresizeMask
    self.view.backgroundColor = UIColor.blueColor
    self.buildUI()

  end

  def buildUI

    frame = self.view.bounds

    @scrollView = UIScrollView.alloc.initWithFrame(frame)
    @scrollView.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin|UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleRightMargin|UIViewAutoresizingFlexibleTopMargin|UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleBottomMargin

    @scrollView.backgroundColor = UIColor.whiteColor
    self.view.addSubview(@scrollView)


    #title label
    @titleLabel = UILabel.alloc.init
    @titleLabel.autoresizingMask = UIViewAutoresizingFlexibleWidth
    @titleLabel.textAlignment = NSTextAlignmentCenter
    @titleLabel.font = UIFont.boldSystemFontOfSize(22)
    @titleLabel.numberOfLines = 0
    @titleLabel.text = @currentItem.title

    @scrollView.addSubview(@titleLabel)

    #image view
    @imageView = UIImageView.alloc.initWithImage(@currentItem.image)
    @scrollView.addSubview(@imageView)


    #text View
    @textView = UITextView.alloc.init
    @textView.autoresizingMask = UIViewAutoresizingFlexibleWidth
    @textView.text = @currentItem.text
    @textView.font = UIFont.systemFontOfSize(22)
    @textView.userInteractionEnabled = false

    @scrollView.addSubview(@textView)


     self.setUIPositions

  end

  #autorotation support
  def shouldAutorotateToInterfaceOrientation(interfaceOrientation)
    return true
  end

  def shouldAutorotate
    return true
  end

  def viewWillLayoutSubviews
    self.setUIPositions
  end

  def setUIPositions
    if (@scrollView && @titleLabel && @textView && @imageView)

      scrollContentSize = CGSizeMake( self.view.bounds.size.width, 0 )
      @titleLabel.frame =  CGRectMake(0,@@buferHeight,scrollContentSize.width, self.getHeightForTextView(@titleLabel, width: scrollContentSize.width))
      scrollContentSize.height += @titleLabel.frame.origin.y + @titleLabel.frame.size.height + @@buferHeight

      if (self.view.bounds.size.width > scrollContentSize.width)
        scrollContentSize.width = self.view.bounds.size.width
      end

      scrollContentSize.height += @titleLabel.frame.origin.y + @titleLabel.frame.size.height + @@buferHeight


      frame = CGRectMake(0, scrollContentSize.height, @currentItem.image.size.width, @currentItem.image.size.height)
      @imageView.frame = frame

      scrollContentSize.height += frame.size.height + @@buferHeight

      frame = CGRectMake( 0 , scrollContentSize.height, scrollContentSize.width, 0)

      frame.size.height = self.getHeightForTextView(@textView, width: scrollContentSize.width) + 2*@@buferHeight
      @textView.frame = frame

      scrollContentSize.height += frame.size.height + @@buferHeight

      @scrollView.setContentSize(scrollContentSize)
    end
  end

  def getHeightForTextView(textView_, width: width_)

    maximumLabelSize = CGSizeMake(width_, 9999)
    expectedLabelSize = textView_.text.sizeWithFont(textView_.font, constrainedToSize:maximumLabelSize, lineBreakMode:NSLineBreakByWordWrapping)

    return expectedLabelSize.height
  end

end