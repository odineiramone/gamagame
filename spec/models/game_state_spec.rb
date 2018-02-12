require 'rails_helper'

RSpec.describe GameState, type: :model do
  before do
    @game_state = GameState.create(user_identifier: 'abc123', answers: 0, hits: 0)
  end

  describe '.correct_response' do
    it { expect { @game_state.correct_response }.to change { @game_state.answers }.from(0).to(1) }
    it { expect { @game_state.correct_response }.to change { @game_state.hits }.from(0).to(1) }
  end

  describe '.wrong' do
    it { expect { @game_state.wrong_response }.to change { @game_state.answers }.from(0).to(1) }
    it { expect { @game_state.wrong_response }.to_not change { @game_state.hits } }
  end
end
