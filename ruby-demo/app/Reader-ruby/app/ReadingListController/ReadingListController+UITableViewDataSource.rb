class ReadingListController
  # table view delegate + dataSource
  def numberOfSectionsInTableView(tableView)
    return 1
  end

  def tableView(tableView, numberOfRowsInSection: section)

    if ( @data )
      return @data.count
    end
    return 0
  end

  def tableView(tableView, cellForRowAtIndexPath: indexPath)

    puts 'create cell number '+indexPath.row.to_s()

    @reuseIdentifier ||= "CELL_IDENTIFIER"

    cell = tableView.dequeueReusableCellWithIdentifier(@reuseIdentifier)

    if (!cell)

      cell = UITableViewCell.alloc.initWithStyle(UITableViewCellStyleSubtitle, reuseIdentifier:@reuseIdentifier)
      cell.detailTextLabel.numberOfLines = 3

    end

    item = @data[indexPath.row]
    item.putImageToImageView(cell.imageView)
    cell.textLabel.text = item.title
    cell.detailTextLabel.text = item.text

    if (@needAppend && indexPath.row == @data.length-1)

      #queue = Dispatch::Queue.concurrent('com.company.app.task')
      #queue.async do

        puts 'loading next page!!!...'

        @loader.LoadFollowingItems(item.id, count:$itemsPageSize)

      #end

      #self.placeLoaderInCell(cell)

    end

    cell

  end
end
