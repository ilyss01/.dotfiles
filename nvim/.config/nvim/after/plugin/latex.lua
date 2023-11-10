local gknapsettings = {
    texoutputext = "pdf",
    textopdf = "pdflatex -shell-escape -jobname \"$(basename -s .pdf %outputfile%)\" -halt-on-error",
    textopdfbufferasstdin = true,
    --textopdf = "pdflatex -interaction=batchmode -halt-on-error -synctex=1 %docroot%",
    --textopdfviewerlaunch = "zathura --synctex-editor-command 'nvim --headless -es --cmd \"lua require('\"'\"'knaphelper'\"'\"').relayjump('\"'\"'%servername%'\"'\"','\"'\"'%{input}'\"'\"',%{line},0)\"' %outputfile%",
    textopdfviewerlaunch = "zathura --synctex-editor-command 'nvim' %outputfile%",
    textopdfviewerrefresh = "none",
    textopdfshorterror = "A=%outputfile% ; LOGFILE=\"${A%.pdf}.log\" ; rubber-info \"$LOGFILE\" 2>&1 | head -n 1",
}

vim.g.knap_settings = gknapsettings
