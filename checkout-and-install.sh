#!/bin/bash
readonly ANSIBLE_INSTALL_URL="http://docs.ansible.com/ansible/latest/intro_installation.html"
readonly MY_ENV_REPO="https://github.com/dmba/my-env.git"
readonly MY_ENV_PATH="$HOME/.my-env/"

start=`date +%s`

ansible_executable=$(which ansible)

# check if ansible exists
if [ -z $ansible_executable ]; then
    echo "  Ansible executable not found!"
    echo "      •   Install Ansible: $ANSIBLE_INSTALL_URL"
    exit
fi

# delete my env if exists
rm -rf $MY_ENV_PATH

# clone repo
git clone $MY_ENV_REPO $MY_ENV_PATH

# go to cloned repo
cd $MY_ENV_PATH

# provision ansible configuration
ansible-playbook -i hosts provision.yml --ask-sudo-pass

end=`date +%s`

runtime=$((end - start))

# print stats
echo "  •   Repo url       ➜    $MY_ENV_REPO"
echo "  •   Repo path      ➜    $MY_ENV_PATH"
echo "  •   Elapsed time   ➜    $runtime s"
