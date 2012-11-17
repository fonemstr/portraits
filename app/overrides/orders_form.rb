Deface::Override.new(:virtual_path => %q{spree/orders/_form},
                     :name => %q{add_table_class_to_cart_detail},
                     :set_attributes => %q{#cart-detail},
                     :attributes => {:class => "table table-bordered"},
                     :disabled => false)