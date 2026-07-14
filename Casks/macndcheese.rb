cask "macndcheese" do
  version "10.5.2"
  sha256 "66c81a225c61b44d464d95a9f18286394b9208f8924d7e039789b6a5ac162d75"

  url "https://github.com/mont127/MacNdCheese/releases/download/v#{version}/MacNCheese.dmg"
  name "MacNdCheese"
  desc "Launcher for running Windows games via Wine, DXVK, MoltenVK and D3DMetal"
  homepage "https://github.com/mont127/MacNdCheese"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "MacNdCheese Launcher.app"

  zap trash: [
    "~/Library/Application Support/MacNdCheese",
    "~/Library/Preferences/com.marcel.macncheese.plist",
  ]

  caveats <<~EOS
    MacNdCheese is ad-hoc signed, not notarized by Apple. The first time you
    open it macOS will say it "can't be verified" or is damaged. To run it:
      1. System Settings → Privacy & Security
      2. Scroll to the blocked-app message for "MacNdCheese Launcher"
      3. Click "Open Anyway", then confirm with your password
  EOS
end
