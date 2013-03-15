class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)

    @tabBar = RootController.alloc.init.getTabBarNavigation
    @tabBar.view.autoresizingMask = $fullAutoresizeMask
    @tabBar.view.frame = @window.bounds
    @window.rootViewController = @tabBar


    @window.makeKeyAndVisible

    true
  end


end
