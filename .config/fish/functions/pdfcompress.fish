# Defined in /tmp/fish.5El2W1/compresspdf.fish @ line 1
function pdfcompress
	command gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile="$argv"out $argv
end
