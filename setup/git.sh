#!/usr/bin/env bash
git config --global gpg.x509.program smimesign
git config --global gpg.format x509

git config --global push.default current
git config --global pull.rebase true
git config --global rebase.autoStash true

# Aliasses
git config --global alias.la "config --get-regexp '^alias\.'"

git config --global core.editor nvim
git config --global alias.st status 

git config --global alias.co "checkout"
git config --global alias.cob "checkout -b"

git config --global alias.lg "log --pretty=format:'%C(yellow)%h %<(12)%C(red)%ad %<(18)%C(green)%an %C(reset)%s' --date=relative --max-count=10"

git config --global alias.c "commit --verbose"
git config --global alias.ca "commit -a --verbose"
git config --global alias.cm "commit -m"
git config --global alias.cam "commit -a -m"

git config --global alias.d "diff"
git config --global alias.ds "diff --stat"
git config --global alias.dc "diff --cached"

git config --global alias.s "status -s"
git config --global alias.b "rev-parse --abbrev-ref HEAD"
git config --global alias.bl "branch --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(contents:subject) %(color:green)(%(committerdate:relative)) [%(authorname)]' --sort=-committerdate"

git config --global alias.wip "for-each-ref --sort='authordate:iso8601' --format=' %(color:green)%(authordate:relative)%09%(color:white)%(refname:short)' refs/heads"
git config --global alias.zup "for-each-ref --sort='authordate:iso8601' --format='%(color:green)%(authordate:relative)%09%(color:white)%(refname:short) / %(contents:subject)' refs/heads"

git config --global alias.rank "shortlog -sn --no-merges"

# Checkout develop
git config --global alias.dev "checkout develop"
git config --global alias.master "checkout master"

# Merge
git config --global alias.abort "merge --abort"
git config --global alias.prmerge "merge develop --no-commit --no-ff"

# Discard changes
git config --global alias.discard "checkout -- ."