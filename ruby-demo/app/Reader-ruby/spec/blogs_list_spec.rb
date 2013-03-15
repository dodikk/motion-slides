describe "Blogs Reading list" do

 #before do
 #  #TODO: Load test data to the test instance
 #  #select 'Blogs' tab in Tab Bar
 #   @app = UIApplication.sharedApplication
 #   @window = @app.keyWindow
 #   puts @window.class
 #
 #   @tabBar = @window.rootViewController
 #   item_ = @tabBar.setSelectedIndex(2)
 #   #puts item_.class
 #
 #   @autoApp = UIATarget.localTarget().frontMostApp()
 #   @autoWindow = @autoApp.mainWindow()
 #   #puts @autoWindow.class
 #   @autoTable = @autoWindow.tableViews()[0]
 # end
 #
 # it "has table with blog posts headlines" do
 #
 #   puts @autoTable.class
 #   @autoTable.cells().count().should.not == 0
 #   @autoCell = @autoTable.cells()[0]
 #   puts @autoCell.staticTexts()
 #   puts @autoCell.staticTexts()[0].value()
 #   cell_text_ = @autoCell.staticTexts()[0].value()
 #   cell_text_.should == '1 some title 2, some text some text ssomsome teext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texext some text ssomsome text some text ssome text somesomesome text some texxt some text ssome text somesomesome text some text ssome text somesomesome text some text ssome text somesomesome text some text ssome text somesomesome text some text ssome text somesomesome text some text ssome text somesomesome text some text ssome text somesomesome text some text ssome text somesomesome text some text ssome text somesomesome text some text ssome text somesomesome text some text ssome text somesomesome text some text ssome text somesomesome text some text ssome text somesomesome text some text ssome text somesomesome text some text ssome text somesomesome text some text ssome text somesomesome text some text ssome text somesomee text somesome text somesome text somesome text someome text some text somesome text some text some text some text somesome text some text some text some text some text some text some text some text some text some text some text some text some text some text some text some text some text some text some text some text'
 #   #cell_texts_.each{ |elem_| puts elem_.value() }
 #
 # end
 #
 #it "loads previous blog posts when user scroll down the table" do
 #
 #  @autoTable.cells().count().should.not == 0
 #  @cellsCount = @autoTable.cells().count()
 #  puts @cellsCount
 #  @autoTable.scrollDown()  #doesn't work
 #  @autoTable.cells()[ @cellsCount-1 ].scrollToVisible()
 #  puts @autoTable.cells().count()
 #  @cellsCount.should.be < @autoTable.cells().count()
 #
 #end
  #
  #def getallsubviews(view_)
  #  view_.subviews.each do |elem_|
  #
  #    if (elem_.isMemberOfClass(UIView.class))
  #        self.getallsubviews(elem_)
  #    end
  #
  #    puts elem_.class
  #    puts elem_.accessibilityLabel
  #  end
  #end
  #
  #def getallsublayers
  #  view_.sublayers.each do |elem_|
  #
  #  end
  #    if (elem_.isMemberOfClass(CALayer.class))
  #      self.getallsublayers(elem_)
  #    end
  #
  #    puts 'layer   ' + elem_.class
  #
  #end

end