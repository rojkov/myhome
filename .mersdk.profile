PS1="MerSDK \u@\h:\w\$ "
if [ -d /etc/bash_completion.d ]; then
    for i in /etc/bash_completion.d/*;
    do
        . $i
    done
fi
