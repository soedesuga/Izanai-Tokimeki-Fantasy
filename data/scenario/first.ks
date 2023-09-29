[cm]
[clearfix]

[bg storage="white.png" time=0]
[layopt layer=0 visible=true]

*name_entry

[cm]
[freeimage layer="0"]

[ptext layer=0 text="お名前を入力してください" x=0 y=90 size=50 color="black" width=1280 align=center time=0]
[ptext layer=0 text="※最大4文字まで" x=0 y=180 size=24 color="black"  width=1280 align=center time=0]

[edit name="f.last_name" width="280" height="70" size="30"  left=500 top=270 maxchars=4 initial="山田"]
[edit name="f.first_name" width="280" height="70" size="30"  left=500 top=370 maxchars=4 initial="太郎"]

[button graphic="ok.png" target="*commit"  x=465 y=540 enterimg="ok2.png"]
[button graphic="reset.png" target="*reset"  x=665 y=540 enterimg="reset2.png"]

[s]

*reset

[iscript]
f.last_name= "山田"
f.first_name= "太郎"
[endscript]

[jump target="*name_entry"]


*commit

[commit]

[jump target="*retry" cond="!f.last_name || !f.first_name"]

[iscript]
f.player_name = f.last_name + f.first_name
tf.name_entry_text = "あなたのお名前は【" + f.player_name + "】でよろしいですか？";
[endscript]

[dialog text="&tf.name_entry_text" type="confirm" target_cancel="*name_entry"]

[cm]
[freeimage layer=0]

[jump storage="scene1.ks"]

*retry

[dialog text="入力されていません"]

[jump target="*name_entry"]


[s]
[position height=160 top=430]
[cm]

 ;背景画像の切り替え実行
 [bg storage="classroom_front_moning.jpg"]


;１人目のキャラクター登場
[chara_new name="tojo" storage="chara/tojo/normal.png" jname="知識" width=1080 height=1920]
[chara_show name="tojo" top=10 left=300]
こんにちは！tf.test[l][r]

;２人目のキャラクター登場
[chara_new name="joka" storage="chara/joka/normal.png" jname="情科" width=720 height=1260]
[chara_show name="joka" top=100 left=20]
こんにちは！[l][r]
