# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ExpensesController, type: :controller do
  let(:user) { create(:user) }
  let(:shared_user) { create(:user) }
  let(:expense) { create(:expense, user: user) }

  before(:each) do
    sign_in create(:user)
  end

  describe "PUT #update_settle_expenses" do
    context "with invalid params" do
      it "sets an alert flash message" do
        put :update_settle_expenses, params: { settle_to_id: user.id, amount: -100 }
        expect(flash[:alert]).to eq('unable to perform')
      end
    end
  end
end