cask "volant" do
  version "0.4.3"
  sha256 "ada95ea9b5a56bc559a1eb50379219d52638d0f416f86998d8a1c590bd28e26c"

  url "https://usevolant.com/updates/Volant-#{version}.dmg"
  name "Volant"
  desc "Sandboxed launcher for apps, notes and agent workflows"
  homepage "https://usevolant.com/"

  livecheck do
    url "https://usevolant.com/updates/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Volant.app"

  zap trash: [
    "~/Library/Containers/com.mysticcoders.volant",
    "~/Library/Containers/com.mysticcoders.volant.AIHost",
    "~/Library/Containers/com.mysticcoders.volant.ExtensionHost",
    "~/Library/Containers/com.mysticcoders.volant.FetchHost",
    "~/Library/Containers/com.mysticcoders.volant.RatesHost",
  ]
end
