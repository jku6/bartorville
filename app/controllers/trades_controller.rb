class TradesController < ApplicationController














    def destroy
        trade = Trade.find(params[:id])
        trade.destroy
        redirect_to trades_path
    end

end