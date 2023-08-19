# Izanai-Tokimeki-Fantasy
IFT.(Izanai-Tokimeki-Fantasy) is the funmade project. This project will make a novel game.

Thank you for coming our project.

次のサイトを確認してGithubとVScodeの設定をして下さい。

VScodeの日本語化
https://qiita.com/gate9/items/8bf2dccbcab196fdff80

GithubとVScodeの連携
https://qiita.com/future_kame/items/9fa256aea09faa28b357

補足資料
#1 変更の反映
VSCodeの場合、勝手に何かしらリモート側で変更がないか(今ローカル側にないコミットがないか)調べてくれます(fetchが自動)
変更がある場合は、「変更の同期」が表示され、その横に今ローカル側にないコミット数と↓が表示されます。
この場合は変更の同期をそのままクリックしてpull(リモート側の変更をローカルに反映する)を行います。

#2 コミットとプッシュ
ファイルを変更したり削除したり追加したりすると、変更点がソース管理に表示されます。
どういう変更をしたのかわかりやすくするためにメッセージ欄に変更点を大体で書いて、コミットを押します。
There are no staged changes to commitは、変更をステージしてない場合に表示されますが、「はい」でおｋです。
これで、ローカル側のリポジトリにコミットが作成されます。
ローカル側にコミットを作成したら、リモート側にそのコミットを反映させるpushを行う必要があります。
コミットの後、プルの時と同じく「変更の同期」が表示され、今リモート側にないコミットが1コミットあることを示す 1 ↑が表示されます。
「変更の同期」を押して、ローカル側で行ったコミットをリモートに同期します。
