require_relative '../../lib/test_helper'

describe 'Swipe like there\'s no tomorrow', :test do
  
  let(:driver) {BaseClass.driver}

  before(:all) do
    BaseClass.start_browser
    env = EnvConfig.new
    @base_url = env.options['baseurl']
  end

  context 'swipe for matches' do

    it 'should open up the main swipe page' do
      driver.get @base_url
      expect(driver.title).to eq "Tinder | Match. Chat. Meet. Modern Dating."
    end

    it 'should open the sign in modal' do
      driver.find_element(SwipePage::FACEBOOK_BUTTON).click
      sleep 60
    end

    it 'should sign in with facebook credentials' do
      driver.find_element(SwipePage::EMAIL_INPUT).send_keys
      driver.find_element(SwipePage::PASSWORD_INPUT).send_keys
    end

    it 'should swipe right until it hits 10000 swipes' do
      like_button = driver.find_element(SwipePage::LIKE_BUTTON)
      sleep 30

      10000.times do
        like_button.click
        sleep(0.1)
      end
    end
  end
end