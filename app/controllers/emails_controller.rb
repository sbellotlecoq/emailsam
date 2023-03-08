class EmailsController < ApplicationController
  def show
    @email = Email.find(params[:id])
  end

  def index
    @emails = Email.all
    end

  def create
    email = Email.create(object: Faker::Lorem.sentence, body: Faker::Lorem.paragraph, user_id:User.all.sample.id)
  end
end