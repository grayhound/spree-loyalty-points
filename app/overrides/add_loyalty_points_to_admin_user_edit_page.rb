Deface::Override.new(:virtual_path => 'spree/admin/users/_sidebar',
  :name => 'add_loyalty_points_to_admin_user_edit_page',
  :insert_bottom => "ul[data-hook='admin_user_tab_options']",
  :text => "
  <li<%== ' class=\"active\"' if current == :loyalty_points %>>
    <%= link_to_with_icon 'star', Spree.t(:loyalty_points_balance), spree.admin_user_loyalty_points_path(@user) %>
  </li>
  ")
