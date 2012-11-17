Deface::Override.new(:virtual_path => %q{spree/checkout/_payment},
                     :name => %q{change payment method ul class},
                     :add_to_attributes => %q{#payment-methods},
                     :attributes => {:class => 'unstyled'},
                     :disabled => false)


Deface::Override.new(:virtual_path => %q{spree/checkout/_payment},
                     :name => %q{change payment order details buttons},
                     :replace => %q{[data-hook="buttons"]},
                     :text => %q{<div class="form-buttons" data-hook="buttons">
  <%= submit_tag t(:save_and_continue), :class => 'continue btn btn-primary' %>
  <script>disableSaveOnClick();</script>
</div>},
                     :disabled => false)