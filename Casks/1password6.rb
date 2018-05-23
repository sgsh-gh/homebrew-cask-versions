cask '1password6' do
  version '6.8.9'
  sha256 'd7cc24dc354f27441929350b9e6e2e4a710d6ed0bdab06f0e9be07160fe04200'

  # 1password.com was verified as official when first introduced to the cask
  url "https://c.1password.com/dist/1P/mac4/1Password-#{version}.zip"
  appcast 'https://app-updates.agilebits.com/product_history/OPM4',
          checkpoint: 'eb8b60476f30a53f496a84e809b948faf81ea9f9ab442f4c923e48720e5a1f2a'
  name '1Password'
  homepage 'https://1password.com/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app "1Password #{version.major}.app"

  zap trash: [
               '~/Library/Application Scripts/2BUA8C4S2C.com.agilebits.onepassword-osx-helper',
               '~/Library/Containers/2BUA8C4S2C.com.agilebits.onepassword-osx-helper',
               '~/Library/Containers/com.agilebits.onepassword-osx',
               '~/Library/Group Containers/2BUA8C4S2C.com.agilebits',
             ]
end
