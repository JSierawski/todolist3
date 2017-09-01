class TodoItem < ActiveRecord::Base

  scope :completed, -> { where(completed: true)}

  def self.get_completed_count
    TodoItem.completed.count
  end
end
