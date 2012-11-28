Deface::Override.new(:virtual_path => "spree/layouts/admin",
                     :name => "gallery_admin_tab",
                     :insert_bottom => "[data-hook='admin_tabs']",
                     :text => "<%= tab(:galleries, :icon => 'icon-file') %>")