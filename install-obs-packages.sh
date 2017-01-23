zypper ar -f http://download.opensuse.org/repositories/OBS:/Server:/2.7/openSUSE_42.1/OBS:Server:2.7.repo
zypper --gpg-auto-import-keys refresh
zypper -n dup -l --replacefiles
zypper update
zypper install -y --replacefiles -t pattern OBS_Server
