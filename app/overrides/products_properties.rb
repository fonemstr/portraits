Deface::Override.new(:virtual_path => %q{spree/products/_properties},
                     :name => %q{change_table_class_product_properties},
                     :set_attributes => %q{#product-properties},
                     :attributes => {:class => 'table table-striped table-bordered table-condensed'},
                     :disabled => false)