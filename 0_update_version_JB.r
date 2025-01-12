## Update version

    ## Clone my mirror and update files
        git clone https://github.com/ryuuzaki42/create_ap
        cd create_ap/
        ./0_dl_updates_JBs.sh

        ## See changes smartsynchronize file file.1

    ## Extract old version
        cd create_ap-*-noarch-1_JB/

    ## See changes
        smartsynchronize README.md usr/share/doc/create_ap/README.md
        mv README.md usr/share/doc/create_ap/README.md

        smartsynchronize create_ap usr/bin/create_ap
        chmod +x create_ap
        mv create_ap usr/bin/

        smartsynchronize create_ap.conf etc/create_ap.conf
        mv create_ap.conf etc/create_ap.conf

        smartsynchronize bash_completion usr/share/bash-completion/completions/create_ap
        mv bash_completion usr/share/bash-completion/completions/create_ap

    ## Make pkg
        cd ../
        su

        version="0.4.8_gitfe64e71"
        mv create_ap-*-noarch-1_JB/ create_ap-$version-noarch-1_JB/

        cd create_ap-*/
        makepkg -l y -c y ../create_ap-$version-noarch-1_JB.txz
