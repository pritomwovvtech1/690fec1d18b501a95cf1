module Api
	module V1
		class PhonesController < ApplicationController
			def index
			 	@phones = Number.order('created_at DESC')
			 	render json:{status: 'SUCCESS', message:'loaded alloted nos',data:numbers},status: :ok
			end

			def new

			end

			def create
				@phone = Number.find_by(params[:number])
				if @phone.present?
				    render json:{status: 'SUCCESS', message:'your alloted no',data:number},status: :ok

				else
					flash[:error] = "the no is already engage"
				end

			end
		end
	end
end