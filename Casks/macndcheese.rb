cask "macndcheese" do
  version "10.4.1"
  sha256 "93b4785f9a7552c8dcc59e4efc4ef73447740925c56a60882fe68f649086402c"

  url "https://github.com/mont127/MacNdCheese/releases/download/v#{version}/MacNCheese.dmg"
  name "MacNdCheese"
  desc "Launcher for running Windows games on macOS via Wine, DXVK, MoltenVK and D3DMetal"
  homepage "https://github.com/mont127/MacNdCheese"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "MacNdCheese Launcher.app"

  # The .app is only ad-hoc signed (no paid Apple Developer ID, no notarization),
  # so Gatekeeper quarantines it after download just like a manual .dmg install.
  caveats <<~EOS
    MacNdCheese is ad-hoc signed, not notarized by Apple. The first time you
    open it macOS will say it "can't be verified" or is damaged. To run it:
      1. System Settings → Privacy & Security
      2. Scroll to the blocked-app message for "MacNdCheese Launcher"
      3. Click "Open Anyway", then confirm with your password
  EOS

  zap trash: [
    "~/Library/Application Support/MacNdCheese",
    "~/Library/Preferences/com.marcel.macncheese.plist",
  ]
end
