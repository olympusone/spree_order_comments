module Spree::V2::Storefront::LineItemSerializerDecorator
  def self.prepended(base)
      base.attributes :comments
  end
end

::Spree::V2::Storefront::LineItemSerializer.prepend(Spree::V2::Storefront::LineItemSerializerDecorator)