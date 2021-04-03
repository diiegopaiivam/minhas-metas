require 'rails_helper'
require 'factories/task'
require 'active_support/core_ext/date/calculations'

RSpec.describe Task, type: :model do
  context 'Factory Valida' do
    let(:task_valid) { create(:task) }
    it 'Deve existir uma factory Válida' do
      expect(task_valid).to be_valid
    end 
  end 


  context 'presence validations' do
		it { is_expected.to validate_presence_of(:name)
			.with_message(I18n.t('activerecord.errors.messages.blank')) }

    it { is_expected.to validate_presence_of(:description)
      .with_message(I18n.t('activerecord.errors.messages.blank')) }

    it { should validate_inclusion_of(:status).in_array([1,2,3]) }

    it { should validate_inclusion_of(:priority).in_array([1,2,3]) }
  end 

  context 'length validations' do
		it { is_expected.to validate_length_of(:name).is_at_most(300)
			.with_message(I18n.t('activerecord.errors.messages.too_long.other', count: 300))}

    it { is_expected.to validate_length_of(:description).is_at_most(2000)
      .with_message(I18n.t('activerecord.errors.messages.too_long.other', count:2000))}
  end 


  #context 'date validations' do
    #it { is_expected.to validates_date(:estimative).on_or_after { 1.year.ago }.on_or_before { 1.year.since } }
  #end 
end
