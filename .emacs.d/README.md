#### Cask
まずは，cask というemacs のパッケージ管理ソフトを導入

##### インストール
 $ curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python 
 $ export PATH=“{HOME}.cask/bin:$PATH” 
 // bashrcに書くと良し 
 // Mac はhomebrewでインストール 
 // $ brew install cask 


##### 初期化
 ;; Caskのアップグレード  
 $ cask upgrade  
 $ cd ~/.emacs.d  
 ;; Caskファイルの初期化  
 $ cask init  

~/.emacs.d/Cask　というファイルが生成される．  
このファイルはインストールするパッケージのリストになっている．  

##### パッケージインストール  
 必要なパッケージをCaskを書き換えたらインストールを実行  
 $ cask install  
 インストールしたものは，以下に格納される  
 ~/.emacs.d/.cask/emacs-version/  


cask 設定ファイル読み出しをinit.elに書き込む  
 (when (or (require 'cask "~/.cask/cask.el" t)  
       (require 'cask nil t))  
         (cask-initialize))  


##### caskのアップデート
 $ cd ~/.emacs.d  
 $ cask update  


memo: flycheck-cask がインストール失敗した模様  

#### Helm
emacsの機能拡張ツール  
　ファイル検索  
　バッファ内のパターンマッチ&ジャンプ  
　などなどができる  

##### インストール
Caskに  
(depends-on “helm”)と記述  

$ cask install  
上記コマンドでインストール実行  
以下，他機能も同様にしてインストール  

##### コマンドとか  
ググって．  

#### cc-mode
c/c++のためのモード  
具体的に何ができるようになるのかはまだ不明  

##### インストール
 Caskで入れられないっぽいので，自前でインストール．  
 $  wget "https://sourceforge.net/projects/cc-mode/files/latest/download?source=typ_redirect”  
解凍して出来たファイルを.emacs.d/以下にコピー  
コピー先のディレクトリへ移動し，  
emacs -batch -no-site-file -q -f batch-byte-compile cc-*.el  

init.elに以下を記述  
(require 'cc-mode)  

##### 機能とか
不明  

#### auto-complete
補完機能  
同バッファ内にある単語を候補として補完してくれる．  

バッファに，ACと表示されていれば機能している．  

##### インストール
Caskでインストール  ．
init.el に以下を記述  

    (require 'auto-complete)  
    (global-auto-complete-mode t)  


#### 使い方
基本的にONのまま．動作のON/OFFを切り替える場合は  
M-x auto-complete-mode  
で切替可能  
