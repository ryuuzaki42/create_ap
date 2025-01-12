## Update version

    ## Clone my mirror and update files
        git clone https://github.com/ryuuzaki42/create_ap
        cd create_ap/
        ./0_dl_updates_JBs.sh

        ## See changes smartsynchronize file file.1

    ## Extract old version
        cd create_ap-*-noarch-1_JB/

    ## See changes
        smartsynchronize ../README.md usr/share/doc/create_ap/README.md
        cp ../README.md usr/share/doc/create_ap/README.md

        smartsynchronize ../create_ap usr/bin/create_ap
        chmod +x ../create_ap
        cp ../create_ap usr/bin/

        smartsynchronize ../create_ap.conf etc/create_ap.conf
        cp ../create_ap.conf etc/create_ap.conf

        smartsynchronize ../bash_completion usr/share/bash-completion/completions/create_ap
        cp ../bash_completion usr/share/bash-completion/completions/create_ap

    ## Make pkg
        cd ../
        su

        version="0.4.9_git_84af02f"
        mv create_ap-*-noarch-1_JB/ create_ap-$version-noarch-1_JB/

        cd create_ap-$version-noarch-1_JB/
        makepkg -l y -c y ../create_ap-$version-noarch-1_JB.txz
        md5sum ../create_ap-$version-noarch-1_JB.txz ../create_ap-$version-noarch-1_JB.txz.md5

        cd ../
        rm -r create_ap-$version-noarch-1_JB/
