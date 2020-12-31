# add submodule
git submodule add -b branch_name URL_to_Git_repo optional_directory_rename

# remove submodule
git rm <submodule path>

# after clone
git submodule update --init

# change branch
git submodule set-branch --branch branch_name -- child-module

# update from remote
git submodule update --remote

# update branch
git submodule update --recursive --remote
git submodule foreach -q --recursive 'git switch $(git config -f $toplevel/.gitmodules submodule.$name.branch || echo master)'

# pull changes
git pull --recurse-submodules

# example for .gitmodule
[submodule "src/widgets"]
	path = src/widgets
	url = git@bitbucket.org:spectory/yona-common.git
	branch = master