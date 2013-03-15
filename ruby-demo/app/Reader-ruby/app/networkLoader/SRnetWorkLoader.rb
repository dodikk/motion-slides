class SRnetWorkLoader < SRItemLoader

  #def LoadLastItems(itemsCount_)
  #
  #  #rootPath_ = "http://mobilesdk.sc-demo.net"
  #  #listOfViewControllers = NSMutableArray.new
  #  #titleFieldName_ = "Menu title"
  #  #iconFieldName_  = "Tab Icon"
  #  #
  #  #context_ = SCApiContext.contextWithHost("mobilesdk.sc-demo.net/-/item")
  #  #fieldsNames_ = NSSet.setWithObjects( titleFieldName_, iconFieldName_, nil)
  #  #itemPath_ = "/sitecore/content/nicam"
  #  #
  #  #request_ = SCItemsReaderRequest.requestWithItemPath(itemPath_, fieldsNames: fieldsNames_)
  #  #request_.flags = SCItemReaderRequestReadFieldsValues
  #
  #  request = SCItemsReaderRequest.new
  #  request.request = "/sitecore/content/Nicam"
  #  request.requestType = SCItemReaderRequestItemPath
  #  request.scope = SCItemReaderSelfScope | SCItemReaderChildrenScope
  #  request.fieldNames = NSSet.set
  #  puts request.class
  #
  #  host = "mobilesdk.sc-demo.net/-/item"
  #  puts host.class
  #
  #  #puts SCApiContext.class
  #  #puts SCApiContext.methods.sort()
  #  context_ = SCApiContext.contextWithHost(host)
  #  puts context_.class
  #
  #
  #  operation = context_.itemsReaderWithRequest(request)
  #  puts operation.class
  #
  #  callback = lambda do | result, error |
  #    puts result.class
  #    puts result.objectAtIndex(0).class
  #  end
  #
  #  operation.objc_BlockSend_Noreturn( [ callback ] )
  #
  #
  #end

end
