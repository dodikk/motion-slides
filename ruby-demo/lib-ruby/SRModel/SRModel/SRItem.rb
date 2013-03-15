class SRItem < NSObject

  attr_reader :image, :title, :text, :id

  def initWithImage(image_, title:title_, text:text_ , id:id_)

  init

  @image = nil
  @imagePath = image_

  @title = title_
  @text = text_
  @id = id_
  @loader = UIActivityIndicatorView.alloc.initWithActivityIndicatorStyle(UIActivityIndicatorViewStyleGray)

  self

  end

  def putImageToImageView(imageView_)

    if (!@image)

      imageView_.setImage( UIImage.imageNamed("Placeholder.png") )
      @loader.setCenter( CGPointMake(40, 40) )
      imageView_.addSubview(@loader)
      @loader.startAnimating

      weakImageView_ = RMWeakRef.refWithTarget( imageView_ )

      queue = Dispatch::Queue.concurrent('com.company.image.load.task')
      queue.async do

        if (@imagePath)
          imageURL = NSURL.URLWithString(@imagePath)
          imageData = NSData.dataWithContentsOfURL(imageURL)
          @image = UIImage.imageWithData(imageData)
        end

        if (weakImageView_.target && @image)
          weakImageView_.target.setImage(@image)
        end

        if (@loader)
          @loader.removeFromSuperview
          @loader = nil
        end

      end

    elsif
      imageView_.setImage(@image)
    end
  end

end