class CouponsController < ApplicationController

	def index
		@coupon = Coupon.all
	end

	def show
		@coupon = Coupon.find(params[:id])
	end

	def new
		
	end

	def create
		@coupon = Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
		redirect_to coupon_path(@coupon)
	end

	# private
	# def coupon_params
	# 	params.permit(:coupon[coupon_code], :coupon[store])
	# end
end