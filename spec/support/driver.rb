RSpec.configure do |config|
  config.before(:each, type: :system) do
    driven_by :selenium, using: :headless_chrome, screen_size: [ 1400, 1400 ]  do |driver_options|
      driver_options.add_argument("--disable-site-isolation-trials")
      driver_options.add_argument('--disable-search-engine-choice-screen')
    end
  end
end