describe "Items table test with  uiautomation" do

  before do

    #@app = UIApplication.sharedApplication
    #@window = @app.keyWindow
    #
    #@tabBar = @window.rootViewController
    #@tabBar.setSelectedIndex(0)
    #@tableView =  @tabBar.selectedViewController.topViewController.view.subviews.objectAtIndex(0)
    #puts @tableView.class


    @autoApp = UIATarget.localTarget().frontMostApp()
    puts @autoApp.class
    @autoWindow = @autoApp.mainWindow()
    puts @autoWindow.class
    @autoTabBar = @autoWindow.tabBars()[0]
    puts @autoTabBar.class




    #puts @autotableView.methods

  end

  it "View controller contains table" do
    #visibleCells = @tableView.visibleCells
    #puts  visibleCells.class
    #count = visibleCells.count
    #puts  visibleCells.class
    #indexPath = @tableView.indexPathForCell(visibleCells[count-1])
    #puts  indexPath.class
    #
    #puts "-----last cell before scroll " +indexPath.row.to_s()
    #@autotableView.scrollDown
    #puts "!!!scroll!!!!"
    #visibleCells = @tableView.visibleCells
    #puts  visibleCells.class
    #count = visibleCells.count
    #puts  visibleCells.class
    #indexPath = @table View.indexPathForCell(visibleCells[count-1])
    #puts  indexPath.class
    #
    #
    #puts "-----last cell after scroll " +indexPath.row.to_s()
    puts
    puts  '±±±±±±±±±±±±±±±±±± test starts ±±±±±±±±±±±±±±±±'
    puts

    puts  'buttons count in tab bar: ' + @autoTabBar.buttons.count.to_s()

    navBars = @autoWindow.navigationBars()
    puts '[before tap] navigationBars count       : ' + navBars.count.to_s()
    if (navBars.count >0)
      puts '[before tap] first navigationBar title  : ' + navBars[0].name
      puts '[before tap] last navigationBar title   : ' + navBars[navBars.count-1].name
    end
    puts

    newsButton = @autoTabBar.buttons[2]
    puts  'button class            : ' + newsButton.class.to_s()
    puts  'button name             : ' + newsButton.name
    puts 'button rect : ' + NSStringFromCGRect( newsButton.rect.rectValue ).to_s()
    puts

    pt = CGPointMake( CGRectGetMidX( newsButton.rect.rectValue ), CGRectGetMidY( newsButton.rect.rectValue ) )
    puts 'tapping at point : ' + NSStringFromCGPoint(pt).to_s()

    UIASyntheticEvents.sharedEventGenerator.sendTap( pt )

    #newsButton.tap()

    navBars = @autoWindow.navigationBars()
    puts '[after tap] navigationBars count        : ' + navBars.count.to_s()
    if (navBars.count >0)
      puts '[after tap] first navigationBar title   : ' + navBars[0].name
      puts '[after tap] last navigationBar title    : ' + navBars[navBars.count-1].name
    end
    #@tableView.class.should.be.equal( UITableView )
  end

  #it "table contains n rows" do
  #  @tableView.numberOfRowsInSection(0).should.be.equal( $itemsPageSize )
  #end
  #
  #it "table contains n+k rows after scrolling down" do
  #
  #
  #  indexPath = NSIndexPath.indexPathForRow($itemsPageSize-1, inSection:0)
  #  puts 'rows in table before scroll ' +@tableView.numberOfRowsInSection(0).to_s()
  #
  #
  #   @tableView.scrollToRowAtIndexPath(indexPath, atScrollPosition:UITableViewScrollPositionBottom, animated:false)
  #
  #
  #  puts 'rows to scroll ' + indexPath.row.to_s()
  #
  #
  #  sleep 5
  #
  #  number = 2* $itemsPageSize
  #
  #  puts 'rows in table after scroll ' + @tableView.numberOfRowsInSection(0).to_s()
  #
  #  #k = 30
  #  #@loader.LoadFollowingItems(0, count:k)
  #  @tableView.numberOfRowsInSection( 0 ).should.be.equal( number )
  #
  #end

end
