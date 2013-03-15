describe "[Reader Mockup] Tab bar contains 4 items" do

  before do
    @app = UIApplication.sharedApplication
    @window = @app.keyWindow
    #puts @window.class

    @tabBar = @window.rootViewController
    #puts @rootVC.class


  end


  it "should contain a tab bar with 4 items" do
    @tabBar.class.should.be.equal( UITabBarController )
    @tabBar.viewControllers.count.should.be.equal( 4 )
  end

  it "contains 3 tab bar items with ReadingListController controllers" do
    #first 3 tabs - it's item tables
    @tabBar.viewControllers.objectAtIndex(0).topViewController.class.should.be.equal( ReadingListController )
    @tabBar.viewControllers.objectAtIndex(1).topViewController.class.should.be.equal( ReadingListController )
    @tabBar.viewControllers.objectAtIndex(2).topViewController.class.should.be.equal( ReadingListController )
    #view('Home view').should.not == nil
    #@tabBar.viewControllers.viewByName( 'Home view', 2 ).should.not == nil
  end

  it "contains the last tab as a setting controller" do
    @tabBar.viewControllers.objectAtIndex(3).class.should.be.equal( SettingsController )
  end

end