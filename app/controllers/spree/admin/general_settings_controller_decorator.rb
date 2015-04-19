Spree::Admin::GeneralSettingsController.class_eval do

  before_action :set_loyalty_points_settings, only: [:edit]

  private

    def set_loyalty_points_settings
      @preferences_loyalty_points = [
        :min_amount_required_to_get_loyalty_points,
        :loyalty_points_awarding_unit,
        :loyalty_points_redeeming_balance,
        :loyalty_points_conversion_rate,
        :loyalty_points_award_period
      ]
    end

end