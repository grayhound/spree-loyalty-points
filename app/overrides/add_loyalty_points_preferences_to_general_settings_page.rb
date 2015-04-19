Deface::Override.new(:virtual_path => 'spree/admin/general_settings/edit',
  :name => 'add_loyalty_points_preferences_to_general_settings_page',
  :insert_before => ".form-actions[data-hook='buttons']",
  :text => "
    <div class='panel panel-default'>
      <div class='panel-heading'>
        <h1 class='panel-title'><%= Spree.t(:loyalty_points_settings) %></h1>
      </div>
      <div class='panel-body'>
        <% @preferences_loyalty_points.each do |key| %>
          <% type = Spree::Config.preference_type(key) %>
          <div class='form-group'>
            <%= label_tag key, Spree.t(key) %>
            <%= preference_field_tag(key, Spree::Config[key], type: type) %>
          </div>
        <% end %>
      </div>
    </div>
  ")