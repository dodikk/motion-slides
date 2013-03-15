class ReadingListController
  #@igk replace constants
  def tableView(tableView, heightForRowAtIndexPath:indexPath)
  return 80
  end

  def tableView(tableView, didSelectRowAtIndexPath:indexPath)

  tableView.deselectRowAtIndexPath(indexPath, animated: true)
  detailedViewController = SRDetaileArticleViewController.alloc.initWithItem(@data[indexPath.row])
  self.navigationController.pushViewController(detailedViewController, animated:true)

  end
end