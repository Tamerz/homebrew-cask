cask 'syncthing' do
  version '1.7.0-1'
  sha256 '8ca54502aa6fb80a60e7a0991fbeb46bfde9d2cbcacac26a5788eaefe32348e1'

  # github.com/syncthing/syncthing-macos/ was verified as official when first introduced to the cask
  url "https://github.com/syncthing/syncthing-macos/releases/download/v#{version}/Syncthing-#{version}.dmg"
  appcast 'https://github.com/syncthing/syncthing-macos/releases.atom'
  name 'Syncthing'
  homepage 'https://syncthing.net/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'Syncthing.app'

  zap trash: [
               '~/Library/Application Support/Syncthing-macOS',
               '~/Library/Caches/com.github.xor-gate.syncthing-macosx',
               '~/Library/Cookies/com.github.xor-gate.syncthing-macosx.binarycookies',
               '~/Library/Preferences/com.github.xor-gate.syncthing-macosx.plist',
             ]
end
