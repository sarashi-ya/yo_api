class Api::V1::RelationsController < ApplicationController
	protect_from_forgery :except => [:create,:search,:send]
	def search
		@relation = Relation.find_by(sender_id:params[:sender_id])
        render json: @relation
	end
##
	def create
		@newRelation = Relation.new(relation_params)
		@newRelation.is_deleted = false
		@newRelation.message_count = 0
		@newRelation.save
		render :json => @newRelation, status: :created # JSON形式
	end

	##pushのメソッド↓
	def sends
		@relation = Relation.where('sender_id = ? and receiver_id = ?' , params[:sender_id] , params[:receiver_id])
		if @relation.blank?
			render json: {message: 'コネクションが外れています。もう一度友達検索してね'}, status: 500
		else
			##PUSHメソッドだけど取り急ぎ成功したていで
			render :json => @relation,status: 200
		end
	end

 private

		def relation_params
	 		params.permit(:sender_name,:sender_id,:receiver_name,:receiver_id)
		end

end
