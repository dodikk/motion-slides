class RootController < NSObject
  include SRDataType

  def getTabBarNavigation

    @tabBarVC = UITabBarController.alloc.init
    @tabBarVC.view.autoresizingMask = $fullAutoresizeMask
    @tabBarVC.viewControllers = self.createListControllers

    @tabBarVC

  end

  def createListControllers
    @controllersList = Array.new

    @homeNavigtionController = getNavigationItemsListViewControllerWithTitle("Home", dataType: SRAll)
    @homeNavigtionController.accessibilityLabel = 'Home view'
    @controllersList.push(@homeNavigtionController)

    @newsNavigtionController = getNavigationItemsListViewControllerWithTitle("News", dataType: SRNews)
    @newsNavigtionController.accessibilityLabel = 'News view'
    @controllersList.push(@newsNavigtionController)

    @blogsNavigtionController = getNavigationItemsListViewControllerWithTitle("Blogs", dataType: SRBlogs)
    @blogsNavigtionController.accessibilityLabel = 'Blogs view'
    @controllersList.push(@blogsNavigtionController)

    @settingsController = SettingsController.alloc.init
    @settingsController.tabBarItem = UITabBarItem.alloc.initWithTitle("Settings", image:UIImage.imageNamed("smallSettings.png"), tag:3)
    @settingsController.accessibilityLabel = 'Settings view'
    @controllersList.push(@settingsController)

    return @controllersList
  end

  def getNavigationItemsListViewControllerWithTitle(title_, dataType: dataType_)

    loader = SRItemLoader.alloc.initWithDataType(dataType_)
    viewController = ReadingListController.alloc.initWithLoader(loader)

    tabBarImage =  UIImage.imageNamed("small"+title_+".png")

    viewController.tabBarItem = UITabBarItem.alloc.initWithTitle(title_, image:tabBarImage, tag:0)
    viewController.setTitle(title_, forState:UIControlStateNormal)

    navigtionController = UINavigationController.alloc.initWithRootViewController(viewController)


    return navigtionController
  end

end