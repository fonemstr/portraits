Deface::Override.new(:virtual_path => %q{spree/shared/_products},
                     :name => %q{add_class_products_list_item},
                     :set_attributes => %q{[data-hook="products_list_item"]},
                     :attributes => {:class => 'span2'},
                     :disabled => false)