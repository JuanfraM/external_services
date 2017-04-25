module Api
  module Bps
    class BpsAportesController < Api::ApiController
      before_action :user, only: [:user_aporte]

      def user_aporte
        @aporte = @user.aportes.first
      end

      private

      def user
        @user = BpsUser.find_by(ci: params[:NumeroDocumento])
      end
    end
  end
end