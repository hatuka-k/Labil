require 'rails_helper'

RSpec.describe "registrations/index", type: :view do
  subject do
    render partial: "registrations/index"
    rendered
  end
  
  descrive "session info" do
    context "user not signed in" do
      it{should have_text I18n.t('registration.index.sign_in')}
    end
  end
end