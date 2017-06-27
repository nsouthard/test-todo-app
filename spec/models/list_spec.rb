require 'rails_helper'

RSpec.describe List, type: :model do
  
  describe '#complete_all_tasks!' do
    it 'should show all tasks if complete' do
      list = List.create(complete: true)
      list.complete_all_tasks!
      expect(list.complete_all_tasks!).to eq(false)
    end
  end

  describe '#snooze_all_tasks!' do 
    it 'should snooze all tasks'
end
