class UserFriendship < ApplicationRecord
  belongs_to :user 
  belongs_to :friend, class_name: 'User', foreign_key: 'friend_id'

  include AASM

  aasm column: 'state', initial: :pending, whiny_transitions: true do 
    state :requested #im not seeing any event which set this state
    state :accepted

    #if you want to trigger request event from any state simply add this
    event :request, after: Proc.new { send_request_email } do transitions to: :requested end 

    #if you want to trigger accepted state from any state do this
    event :accept,   after: Proc.new { send_acceptance_email }       do transitions to: :accepted end

    #if you want to trigger accepted state from only requeste state
    event :accept,   after: Proc.new { send_acceptance_email }      do transitions from: :requested,   to: :accepted  end

  end

  def self.request(user1, user2)
    transaction do
      friendship1 = create!(user: user1, friend: user2, state: 'pending')
      friendship2 = create!(user: user1, friend: user2, state: 'requested')

      friendship1.send_request_email
      friendship1

    end
  end


  def send_request_email
    UserNotifier.friend_requested(id).deliver
  end

  def send_acceptance_email
    UserNotifier.friend_accepted(id).deliver 
  end

end
