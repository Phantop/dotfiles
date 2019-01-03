# Defined in /tmp/fish.5El2W1/compresspdf.fish @ line 1
function compresspdf
	command gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile=out$argv $argv
end
