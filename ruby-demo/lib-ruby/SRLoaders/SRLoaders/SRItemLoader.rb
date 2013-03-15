#require 'SRDataType.rb'

class SRItemLoader < NSObject

  include SRDataType

  def setDelegate(delegate_)
       @delegate = WeakRef.refWithTarget( delegate_ )
  end

  def initWithDataType(dataType_)
    init
    @dataType = dataType_
    self
  end

  def LoadLastItems(itemsCount_)
    i = 0
    items = Array.new

    until i == itemsCount_ do

      i = i + 1

      imagePath = nil

      case  @dataType
        when SRAll
          imagePath = 'http://snailgames.net/Websitepictures/icon_56l0k5oja92knc1tdlnvb565u3.png'
        when SRNews
          imagePath = 'http://d15xkf1ye01a0m.cloudfront.net/f356c360-0181-4e24-9229-b3035bc7cb75.jpg'
        when SRBlogs
          imagePath = 'http://www.theattractionforums.com/customavatars/avatar65201_2.gif'
      end

      item = SRItem.alloc.initWithImage(imagePath,
                                        title:' ' + i.to_s() + ' some title ' + @dataType.to_s(),
                                        text:'some text some text ssomsome teext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texxt some text ssome text somesomesome text some text ssome text somesomesome text some text ssome text somesomesome text some text ssome text somesomesome text some text ssome text somesomesome text some text ssome text somesomesome text some text ssome text somesomesome text some text ssome text somesomesome text some text ssome text somesomesome text some text ssome text somesomesome text some text ssome text somesomesome text some text ssome text somesomesome text some text ssome text somesomesome text some text ssome text somesomesome text some text ssome text somesomesome text some text ssome text somesomesome text some text ssome text somesomee text somesome text somesome text somesome text someome text some text somesome text some text some text some text somesome text some text some text some text some text some text some text some text some text some text some text some text some text some text some text some text some text some text some text some text',
                                        id:i
                                      )

      items.push( item )

    end
    @delegate.target.setItemsList(items)

  end

  def LoadFollowingItems(itemID, count:itemsCount_)
  i = 0
  items = Array.new

  until i == itemsCount_ do

    i = i + 1

    item = SRItem.alloc.initWithImage(nil,
                                      title:' ' + i.to_s() + ' some title ' + @dataType.to_s(),
                                      text:'some text some text ssomsome text some text ssome text somesomesome text some text ssome text somesomesome text some text ssome text somesomesome text some text ssome text somesomesome text some text ssome text somesomesome text some text ssome text somesomesome text some text ssome text somesomesome text some text ssome text somesomesome text some text ssome text somesomesome text some text ssome text somesomesome text some text ssome text somesomesome text some text ssome text somesomesome text some text ssome text somesomesome text some text ssome text somesomesome text some text ssome text somesomesome text some text ssome text somesomesome text some text ssome text somesomee text somesome text somesome text somesome text someome text some text somesome text some text some text some text somesome text some text some text some text some text some text some text some text some text some text some text some text some text some text some text some text some text some text some text some text',
                                      id:itemID + i
    )

    items.push( item )

  end

  @delegate.target.appendData(items)
  end

  def LoadPreviousItems(itemsCount, lastItemId: itemID)
  end

end