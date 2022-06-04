module Spree::OrderDecorator
    def compare_line_item_comments(_line_item, _options)
        _line_item.comments == _options[:comments]
    end
end
  
::Spree::Order.prepend(Spree::OrderDecorator)