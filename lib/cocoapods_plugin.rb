require 'cocoapods'
require 'cocoapods-prebuild/hooks/joe-prebuild'

module CocoapodsPrebuild
    Pod::HooksManager.register('cocoapods-prebuild', :post_install) do |context|
        Prebuild.new.sync()
    end

    Pod::HooksManager.register('cocoapods-prebuild', :post_update) do |context|
        Prebuild.new.sync()
    end
end