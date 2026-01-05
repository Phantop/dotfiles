#!/usr/bin/fish
rm -r ~/.config/fish/*
stow --no-folding -d ~/.dotfiles -t ~/.config/fish fish

fish_add_path -U /opt/homebrew/{opt/{file-formula/,coreutils/libexec/gnu},}bin
fish_add_path -U ~/.cargo/bin /go/bin /usr/lib64/ccache/bin
fish_add_path -U ~/.local/appdwarf/{,apps{,/bin}}
fish_add_path -U ~/{.dotfiles,.local,Games}/bin

set -U fish_features all
set -Ux DOTNET_BUNDLE_EXTRACT_BASE_DIR /tmp
set -Ux EDITOR nvim
set -Ux GTK_THEME Dracula
set -Ux MANPAGER 'nvim +Man!'
set -Ux NNN_FIFO /tmp/nnn.fifo
set -Ux NNN_PLUG 'f:fzcd;i:imgur;j:autojump;m:nmount;p:preview-tui;s:imgview'
set -Ux PAGER most
set -Ux PROTONPATH /usr/share/steam/compatibilitytools.d/proton-ge-custom
set -Ux QT_QPA_PLATFORMTHEME qt6ct
set -Ux USE_CCACHE 1
set -Ux WINEDEBUG -all

curl -sL https://git.io/fisher | source
fisher install {jorgebucaran/replay,PatrickF1/fzf,mattmc3/dict}.fish

ln -s /opt/homebrew/share/autojump/autojump.fish ~/.config/fish/conf.d/autojump.mac.fish
starship init fish --print-full-init > ~/.config/fish/conf.d/starship.fish

fish_update_completions

alias a 'alias -s'
a acmus 'timeout (math 60 - (date +%M))m mpv --loop https://acmusicext.com/static/$argv/sunny/(date +%-I%P).ogg'
a aliases 'v (which config.fish); config.fish'
a all2jxl 'fd -e{gif,jpeg,jpg,png,ppm} -x cjxl -e 8 -d 0 {} {.}.jxl \; -x rm'
a awall 'xwinwrap -fdt -fs -- mpv -wid WID ~/Pictures/Wall/Anim/$argv* --loop --no-osc'
a avg 'jq -s add/length'
a base64d 'echo (echo $argv | base64 -d 2>/dev/null) | tee /dev/stderr 2>| clip;:'
a clip 'xsel -ib'
a cpugov 's cpupower frequency-set -g performance'
a curlflux 'eval curl (cat ~/.config/miniflux)/$argv[1] $argv[2..-1];:'
a def 'curl dict://dict.org/d:$argv;:'
a dirdl 'wget -r -k -p -np -e robots=off'
a dl 'test -z "$argv" && cd ~/Downloads || aria2c -c -{j,s,x}16 --http-accept-gzip'
a dot 'cd ~/.dotfiles'
a drivedl 'dl https://drive.usercontent.google.com/download?confirm=t&(echo $argv | cut -d/ -f6);:'
a epubpack 'cd $argv && zip -0rX ../(basename $argv).epub mimetype *; cd ..;:'
a ff 'fd -HILi -Edosdevices -E.git'
a fichub 'lynx -dump https://fichub.net/legacy/epub_export?q=$argv | grep epub? | cut -d. -f2- | dl -i-;:'
a fumount 'fusermount -u'
a g git
a gdl 'gallery-dl --exec-after "cd gallery-dl && fish -c all2jxl"'
a gittop 'cd (git root)'
a giveme 's chown $USER'
a gsopti 'fd -e pdf -x gs -sDEVICE=pdfwrite -dNOPAUSE -sOutputFile={}1 {} \; -x mv {}1 {}'
a hardinfo 'inxi -SPARM -GCDN -v1 -xGCRS -Fxz'
a htmldecode 'python3 -c "import html, sys; print(html.unescape(sys.stdin.read()))"'
a imgsum 'printf "$argv: " && identify -format "%#\n"'
a kittab 'kitty @ launch --type=tab --cwd $PWD'
a l ls
a la 'l -A'
a launcher 'rofi -combi-modi drun,run,window -modi combi -show'
a listen 'pactl list | grep loop && set t un; pactl "$t"load-module module-loopback'
a lock 'budgie-screensaver-command -l'
a magdl 'dl --seed-time=0 magnet:?xt=urn:btih:$argv;:'
a mangadex 'gdl --chapter-filter "language == \'English\'"'
a mvd mullvad
a nix '. ~/.nix-profile/etc/profile.d/nix.fish; command nix'
a nnn 'nnn -A'
a nsmd 'netsurf (md2html $argv | psub -s .html);:'
a nsp 'netsurf (pandoc $argv -s -t html | psub -s .html);:'
a nsw 'parallel "curl -L nswgame.com/{}-nintendo-switch-nsp-xci-nsz-download-free | pup .su-spoiler-content a attr{href}" :::'
a off shutdown
a outfox 'firejail --private=~/Games/outfox --noprofile ./OutFox'
a pbdl 'gdl (trurl -s host=www.tumblr.com $argv);:'
a pill 's powerpill -Syu'
a png2webp 'fd -e png -x cwebp -z 9 -mt {} -o {.}.webp \; -x rm'
a print 'string collect'
a py3 python3
a py py3
a qb 'qutebrowser --target auto'
a qutainer 'qutebrowser --temp-basedir'
a re 'systemctl reboot -i'
a remap 'xremap --mouse --ignore "ELAN0676:00 04F3:3195 Touchpad" ~/.config/xremap.yml'
a rmdirs 'ff -t d -x rmdir -p'
a rmlinks 'ff -t l -x rm'
a rssb 'curl rss-bridge.github.io/rss-bridge/General/Public_Hosts | pup text{} | grep https | shuf -n1 | clip'
a s sudo
a scale 'dconf write /org/gnome/desktop/interface/text-scaling-factor'
a smt 'echo $argv | s tee /sys/devices/system/cpu/smt/control;:'
a sre 'systemctl soft-reboot'
a sum 'jq -s add'
a sus 'systemctl suspend'
a sxiv nsxiv
a tar bsdtar
a tcsv 'curl https://torrents-csv.com/service/search?q=(echo $argv | tr " " +) | jless;:'
a umu umu-run
a up 's pacman -Syu'
a urldecode 'python3 -c "import sys; from urllib.parse import unquote; print(unquote(sys.stdin.read()))"'
a v vi
a venv 'python3 -m venv venv && source venv/bin/activate.fish && pip3 install -r requirements.txt'
a vi nvim
a vwhich 'v (which $argv);:'
a wallp 'gsettings set org.gnome.desktop.background picture-uri file://(realpath $argv);:'
a ya 'yay -a'
a ydl 'yt-dlp'
a ydlh 'ydl -S height:$argv[1] $argv[2..-1];:'

a 7zstd '7z a -m0=zstd -mx22 -mmt=8 -mfb=273 -md=1536m -ms=on (realpath $argv[1]).7z'
a compress '7z a -m0=flzma2 -mx9 -mmt=8 -mfb=273 -md=1536m -ms=on (realpath $argv[1]).7z'
a dwarf 'mkdwarfs -i . -o $PWD.dwarfs -f --categorize=pcmaudio -C pcmaudio/waveform::flac:level=8'
a dwarfmount 'dwarfs -f $argv (mktemp -d | tee /dev/tty /dev/stderr 2>| clip);:'
a dwarfs 'dwarfs -o offset=auto -o tidy_strategy=swap -o workers=(nproc)'
a dwarfs2null 'dwarfsextract -o /dev/null -f gnutar -i'
a dwarfs2tar 'dwarfsextract -o dwarfs-root.tar -f gnutar -i'
a redwarf 'mkdwarfs -o redwarf.dwarfs --recompress -i'
a squash 'mksquashfs . $PWD.squashfs -comp zstd -b 1M -Xcompression-level 22'
a undwarfs 'mkdir dwarfs-root; dwarfsextract -o dwarfs-root -i'
a xcompress 'fxz -T0 -9 -k'

a catbox 'curl https://catbox.moe/user/api.php -F reqtype=fileupload -F fileToUpload=@$argv;:'
a temp 'curl https://temp.sh/upload -F file=@$argv;:'
a tldr 'curl -s https://raw.githubusercontent.com/tldr-pages/tldr/main/pages/{common,linux}/$argv.md;:'

a history_find 'history -p (string sub -s 2 $argv[1]) | head -n1;:'
a history_last 'history -n1;:'

if type arista-python || type arista-ssh
  a abuild 'a4c build --platform x86_64_el9 --service workspace'
  a acons 'dt ssh run en \; ba python -m Acons'
  a adef 'a grok -d'
  a amk 'a ws make -p (basename (git root || pwd))'
  a artic 'gb artic --schedule now'
  a assh 'arista-ssh login -p google'
  a bump 'gb commit -a --amend --no-edit'
  a bug 'a reproduce --grabParams=--pool=any'
  a bugscan 'curl -L dashboard/py/get_tests.py?elastic&bug=$argv&limit=999 | jq .tests[].id | parallel logscan;:'
  a clake 'curl -L http://joblog/$argv | copen -;:'
  a cleansrc 'pushd /src; fgit status | grep untracked | string escape | cut -d\\\\ -f5 | sudo xargs rm -r; popd'
  a copen 'code -r'
  a dt 'a dt'
  a dut 'dt gd | head -n1 | cut -d/ -f3'
  a expire 'a mts supersede -R "Tests scheduled by MATT have expired."'
  a expireall 'muts | parallel expire -p'
  a freshen 'sudo swi freshen /images/EOS.swi'
  a gb 'a git'
  a gbc 'gb create eos-trunk -n (date +%m%d)'
  a job 'bug -j'
  a jobscan logscan
  a lake 'curl -sL http://joblog/$argv;:'
  a logre 'a logre create bug --fullAuto --jobId'
  a logscan 'a job logscan --jobId'
  a lunch 'gb launch'
  a mock 'gb mock --schedule now'
  a mut 'gb topic show'
  a muts 'a mut status -u --json | jq -r .[].name[]'
  a oc 'gnmi -addr (dut) -username admin get /$argv | tail -n+2;:'
  a pb 'curl -F t=$USER@arista.com -F c=@- pb/'
  a prop 'ART_DISPLAY_PROPERTIES=$argv[1] dt info -s $argv[2] | grep $argv[1];:'
  a prune 'gb prune (topics)'
  a reagent 'echo "edut.restartAgent(\'$argv\')" | dt py;:'
  a rebase 'gb update --sync --rebase-topics'
  a redt 'dt off $argv && dt on'
  a rejects 'muts | parallel a mts show -s rejected -p'
  a revdiff 'curl -L reviewboard/r/$argv/diff/raw;:'
  a revfiles 'revdiff $argv | cut -f1 | sed -n "s|+++ |/|p";:'
  a san 'echo "edut.cleanconfig()" | dt py'
  a startoc 'dt ssh run "en ; conf ; management api gnmi ; transport grpc default"'
  a tcam 'echo "edut.setTcamProfile(\'$argv\')" | dt py;:'
  a toggle 'dt toggle --featureToggle=$argv=true;:'
  a topic 'gb checkout'
  a topics 'gb topics --name-only'
  a trace 'lake $argv | trace.awk;:'
  a vlake 'v http://joblog/$argv;:'
end

for i in (cut -d ' ' -f1 < ~/.config/qutebrowser/quickmarks)
  a $i "qutebrowser / \":open $i\""
end

for i in deemix encodec eventeditor getjump git-sim mathicsscript pdf2docx portablemc ratarmount scdl spleeter trafilatura
    a $i "uvx $i"
end
a in2csv 'uvx --from csvkit in2csv'
a mathics 'uvx --from mathics-django mathicsserver'
a jitios 'sudo uvx SideJITServer'
