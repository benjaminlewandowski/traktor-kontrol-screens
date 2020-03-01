import CSI 1.0
import "../Common/XDJ"

Module
{
  id: module

  property int deck: 1
  property bool enabled: true

  readonly property string deckProp: "mapping.state.deck" + deck + "."

  XDJCommonDeck { name: "common_deck"; id: commonDeck; deck: module.deck; deckProp: module.deckProp; enabled: module.enabled }

  XDJBrowserModule { name: "browser"; deck: module.deck; lines: 7; useHeader: false; deckProp: module.deckProp; enabled: module.enabled }

  XDJ700Stripe { name: "stripe"; deck: module.deck; enabled: module.enabled  }

  XDJ700HotCues { name: "hotcues"; deck: module.deck; deckProp: module.deckProp; enabled: module.enabled }

}
