$itemsPageSize = 60

class ReadingListController < UIViewController
  def viewDidLoad
    super
    self.view.autoresizingMask = $fullAutoresizeMask

    @table = UITableView.alloc.initWithFrame(self.view.bounds)
    @table.autoresizingMask =  $fullAutoresizeMask

    self.view.addSubview @table
    @table.dataSource = self
    @table.delegate = self
    @needAppend = true

    @loader.LoadLastItems($itemsPageSize)

  end
# To change this template use File | Settings | File Templates.

  #autorotation support
  def shouldAutorotateToInterfaceOrientation(interfaceOrientation)
    return true
  end

  def shouldAutorotate
    return true
    end
end

class ReadingListController
  # @return [selftype]
  def initWithLoader(loader_)
    initWithNibName(nil, bundle: nil)

    @loader = loader_

    @loader.setDelegate(self)

    self
  end


  def setItemsList(itemsList)

    @data = itemsList
    @needAppend = itemsList.length == $itemsPageSize

    @table.reloadData

  end


  def appendData(newItemsList)

    @data += newItemsList
    @needAppend = newItemsList.length == $itemsPageSize
    @table.reloadData

  end

end
